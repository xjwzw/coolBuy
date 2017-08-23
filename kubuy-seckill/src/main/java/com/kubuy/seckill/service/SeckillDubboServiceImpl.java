package com.kubuy.seckill.service;

import java.util.Date;
import java.util.List;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.kubuy.common.enums.SeckillStatEnum;
import com.kubuy.common.service.RedisService;
import com.kubuy.common.vo.Exposer;
import com.kubuy.common.vo.SeckillExecution;
import com.kubuy.dubbo.exception.SeckillException;
import com.kubuy.dubbo.pojo.Seckill;
import com.kubuy.dubbo.pojo.SuccessSeckill;
import com.kubuy.dubbo.service.SeckillDubboService;
import com.kubuy.seckill.mapper.SeckillMapper;

public class SeckillDubboServiceImpl implements SeckillDubboService {

	private static final ObjectMapper MAPPER=new ObjectMapper();
	private final static String SAULT="dsfsdf34t46'7846nbnk;";	//md5加密盐值
	private static final int DEFAULT_ACQUIRY_RESOLUTION_MILLIS = 100;	//设置程序默认执行时间为100毫秒


	/**
	 * 锁超时时间，防止线程在入锁以后，无限的执行等待
	 */
	private int expireMsecs = 60 * 1000;

	/**
	 * 锁等待时间，防止线程饥饿
	 */
	private int timeoutMsecs = 10 * 1000;

	private volatile boolean locked = false;

	@Autowired
	private SeckillMapper seckillMapper;
	@Autowired
	private RedisService redisService;
	@Autowired
	private RabbitTemplate rabbitTemplate;
	@Override
	public List<Seckill> findCurSeckill() {
		return seckillMapper.findCurSeckillList(new Date());
	}

	@Override
	public Seckill findSeckillDetail(Long seckillId) {
		return seckillMapper.selectByPrimaryKey(seckillId);
	}

	@Override
	public Long getTimeStamp() {
		return new Date().getTime();
	}

	@Override
	public Exposer exposer(Long seckillId) {
		//以seckill拼接":exposer"为键,从redis中查询是否有对应的exposer对象(json串)
		String key=seckillId+":exposer";
		String json=redisService.get(key);
		//若对象存在,则进行转换并返回
		if(json!=null){
			try {
				Exposer exposer=MAPPER.readValue(json, Exposer.class);
				return exposer;
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		//若redis不存在,则查询数据库,根据秒杀id查询对应的秒杀信息
		Seckill seckill=seckillMapper.selectByPrimaryKey(seckillId);
		if(seckill==null){
			//若该秒杀信息不存在,则返回对应的Exposer
			return new Exposer(false, null, seckillId, null, null, null);
		}
		//若该秒杀信息存在,则判定该秒杀是否属于当前秒杀场次
		//获取当前系统时间
		Date now =new Date();
		//获取秒杀的开始与结束时间
		Date startTime=seckill.getStartTime();
		Date endTime=seckill.getEndTime();
		if(now.getTime()<startTime.getTime()||now.getTime()>endTime.getTime()){
			//若该秒杀信息对应的秒杀场此不属于本次秒杀场此
			return new Exposer(false, null, seckillId, now.getTime(), startTime.getTime(), endTime.getTime());
		}
		//若符合要求,则通过其id和固定的盐值为其生成md5加密地址
		String url=DigestUtils.md5Hex(seckillId+SAULT);
		Exposer exposer=new Exposer(true, url, seckillId, now.getTime(), startTime.getTime(), endTime.getTime());
		try {
			json=MAPPER.writeValueAsString(exposer);
			//同时将该对象保存进redis,并设置最大存活时间(毫秒)
			redisService.set(seckillId+":exposer", json, endTime.getTime()-now.getTime());
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}		
		return exposer;
	}

	@Override
	public SeckillExecution execution(Long seckillId, Long userId,Long itemId, String url) {
		//判断该url地址是否正确
		if(url==null||!url.equals(DigestUtils.md5Hex(seckillId+SAULT))){
			//若检验不通过,告诉用户秒杀不成功
			return new SeckillExecution(seckillId, SeckillStatEnum.INNER_ERROR);
		}
		try {
			//进行尝试获取分布式锁
			if(getLock(seckillId)){
				//若获取锁成功,进行下一步操作
				//从redis中获取键为该秒杀商品的商品id的值
				String numJson=redisService.get("seckill-item:"+itemId);
				if(numJson==null||Long.parseLong(numJson)<=0){
					//若值不存在或者该值为0,证明秒杀已结束
					return new SeckillExecution(seckillId, SeckillStatEnum.END);
				}
				String key=seckillId+":"+userId;
				//判断该用户是否已经秒杀成功该秒杀商品
				if(redisService.get(key)!=null){
					return new SeckillExecution(seckillId, SeckillStatEnum.REPEAT_KILL);
				}
				redisService.decr("seckill-item:"+itemId);
				//添加成功秒杀明细(添加到rabbitmq中)
				SuccessSeckill successSeckill=new SuccessSeckill(seckillId, userId, itemId);
				successSeckill.setCreated(new Date());
				successSeckill.setUpdated(successSeckill.getCreated());
				String routingKey = "successSeckill.add";	//定义，全局唯一
				rabbitTemplate.convertAndSend(routingKey, successSeckill);
				//同时将该秒杀id与用户id拼接作为键,随意字符串作为值保存进redis,已标识该用户已成功秒杀该商品
				redisService.set(key, "1");
				//若都成功,则返回秒杀执行结果对象
				return new SeckillExecution(seckillId, SeckillStatEnum.SUCCESS);
			}
			return new SeckillExecution(seckillId, SeckillStatEnum.INNER_ERROR);
		}catch (Exception e) {
			e.printStackTrace();
			//记录日志
			return new SeckillExecution(seckillId, SeckillStatEnum.INNER_ERROR);
		}finally{
			unlock(seckillId);
		}
	}

	@Override
	public void addSeckill(String title, Integer num, Long itemId, Long price, Long cost, Date date,
			Long time) {
		//date会比发送端多了14个小时
		Long startTime=date.getTime()+time*2*1000*3600-14*1000*3600;
		Long endTime=date.getTime()+(time+1)*2*1000*3600-14*1000*3600;
		Seckill seckill=new Seckill(null, title, num, itemId, price, cost, new Date(startTime), new Date(endTime));
		seckill.setCreated(new Date());
		seckill.setUpdated(seckill.getCreated());
		//将该秒杀信息保存进数据库
		seckillMapper.insertSelective(seckill);
		//将该商品id作为键,秒杀库存作为值,保存进redis,同时设置最大存活时间
		redisService.set("seckill-item:"+seckill.getItemId(), seckill.getNum()+"", (seckill.getEndTime().getTime())-(new Date().getTime()));

	}
	/**
	 * 获取分布式锁
	 * @return	成功则返回true,不成功则返回false
	 * @throws InterruptedException 
	 */
	private synchronized boolean getLock(Long seckillId) throws InterruptedException{
		int timeout = timeoutMsecs;	//设置锁的超时时间
		while(timeout>0){
			//设置锁的到期时间(当前系统时间+锁的存货时间)
			Long expires = System.currentTimeMillis() + expireMsecs;
			if(redisService.setnx("lockKey:"+seckillId, expires+"")>0){
				//若能返回结果大于0,则证明插入成功,原来没有值,即没有其它线程拿着,获取锁成功.
				locked = true;
				return true;
			}
			//若插入不成功,证明redis已有值,即有线程已经获得了锁,则获取其值
			Long oldTime = Long.parseLong(redisService.get("lockKey:"+seckillId));
			//判断是否超时
			if(oldTime<System.currentTimeMillis()){
				//若已超时,则设置新值,即将锁抢过来
				redisService.getSet("lockKey:"+seckillId, System.currentTimeMillis() + expireMsecs+"");
				locked = true;
				return true;
			}
			timeout -= DEFAULT_ACQUIRY_RESOLUTION_MILLIS;
			/*
			            延迟100 毫秒,  这里使用随机时间可能会好一点,可以防止饥饿进程的出现,即,当同时到达多个进程,
			            只会有一个进程获得锁,其他的都用同样的频率进行尝试,后面有来了一些进行,也以同样的频率申请锁,这将可能导致前面来的锁得不到满足.
			            使用随机的等待时间可以一定程度上保证公平性
			 */
			Thread.sleep(DEFAULT_ACQUIRY_RESOLUTION_MILLIS);

		}
		return false;
		
	}
	/**
	 * 释放分布式锁
	 */
	public synchronized void unlock(Long seckillId) {
		if (locked) {
			redisService.del("lockKey:"+seckillId);
			locked = false;
		}
	}


}
