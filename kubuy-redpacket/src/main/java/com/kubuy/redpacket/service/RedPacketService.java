package com.kubuy.redpacket.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Set;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kubuy.common.spring.extend.PropertyConfig;
import com.kubuy.common.service.RedisService;
import com.kubuy.redpacket.mapper.RedPacketMapper;
import com.kubuy.redpacket.pojo.RedPacket;
import com.kubuy.redpacket.pojo.UseRedpacket;
import com.rabbitmq.client.Channel;
import com.rabbitmq.client.Connection;
import com.rabbitmq.client.ConnectionFactory;

@Service
public class RedPacketService {
	
	@Autowired
	private RedPacketMapper redPacketMapper;
	
	@Autowired
	private RedisService redisService;
	
	@PropertyConfig
	private String all;
	
	@PropertyConfig
	private String number;
	
	private final static String QUEUE_NAME = "giveRedpacket";
	
	// 红包金额，红包个数
	public void creatRedPacket(Date date) {
		Double total = Double.parseDouble(all);
		Integer num = Integer.parseInt(number);
		List<Double> redPacketList = new ArrayList<Double>();
		
		GregorianCalendar gc = new GregorianCalendar();
		gc.setTime(date);
		
		//整点发红包
		if((gc.get(gc.MINUTE)== 43)){
			
			double money = 0;
			double sum = 0;
			for (int i = 0; i < num; i++) {
				money = Math.random()*total+0.01*total*num;
				sum += money;
				redPacketList.add(money);
			}
			
			double account = total;
			for (int i = 0; i < redPacketList.size()-1; i++) {
				money = redPacketList.get(i)*total/sum;
				money = (double)(Math.round(money*100)/100.0);
				redPacketList.set(i, money);
				account -= money;
			}
			account = (double)(Math.round(account*100)/100.0);
			redPacketList.set(num-1, account);
			
			
			RedPacket redPacket = new RedPacket();
			redPacket.setTotal(total);
			redPacket.setBalance(total);
			redPacket.setCreated(new Date());
			redPacket.setNum(num);
			redPacket.setStatus(1);
			redPacket.setGameOver(redPacket.getCreated());
			
			try{
				// 获取到连接以及mq通道
				Connection connection = getConnection();
				Channel channel = connection.createChannel();
				
				channel.queueDeclare(QUEUE_NAME, false, false, false, null);
				
				//准备红包
				for (int i = 0; i < redPacketList.size(); i++) {
					Double message = redPacketList.get(i);
					channel.basicPublish("", QUEUE_NAME, null, message.toString().getBytes());
					
					Thread.sleep(i * 100);
				}
				
				channel.close();
				connection.close();
			}catch(Exception e){
				e.printStackTrace();
			}
			
			//红包入库
			redPacketMapper.creatRedPacket(redPacket);
			
			//redis定时，到时间消息队列清空，剩余红包金额返回平台，各用户抢红包的战绩存库
			redisService.set("total", total+"", 30*60);
			
			//redis记录余额
			redisService.set("balance", total+"",40*60);
			
			while(true){
				
				//红包过期，数据入库
				if(StringUtils.isEmpty(redisService.get("total"))){
					double balance = Double.parseDouble(redisService.get("balance"));
					Set<String> useIdStr = redisService.smembers("userId");
					
					List<UseRedpacket> useRedpacketList = new ArrayList<UseRedpacket>();
					for (String str : useIdStr) {
						UseRedpacket useRedpacket = new UseRedpacket();
						Double useRed = Double.parseDouble(redisService.get(str));
						
						useRedpacket.setUseId(Long.parseLong(str));
						useRedpacket.setMoney(useRed);
						
						useRedpacketList.add(useRedpacket);
						
					}
					
					//更新红包数据库
					redPacket.setBalance(balance);
					redPacket.setStatus(2);
					redPacket.setGameOver(new Date());
					redPacketMapper.updateRedPacket(redPacket);
					
					//个人抢红包战绩入库
					redPacketMapper.creatUseRedPacket(useRedpacketList);
				}
			}
		}
	}
	
	public static Connection getConnection() throws Exception {
        //定义连接工厂
        ConnectionFactory factory = new ConnectionFactory();
        //设置服务地址
        factory.setHost("192.168.247.20");
        //端口
        factory.setPort(5672);
        //设置账号信息，用户名、密码、vhost
        factory.setVirtualHost("/kubuy");
        factory.setUsername("kubuyadmin");
        factory.setPassword("123456");
        // 通过工程获取连接
        Connection connection = factory.newConnection();
        return connection;
    }

}
