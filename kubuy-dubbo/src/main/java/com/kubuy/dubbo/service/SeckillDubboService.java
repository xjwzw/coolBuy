package com.kubuy.dubbo.service;

import java.util.Date;
import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.kubuy.common.vo.Exposer;
import com.kubuy.common.vo.SeckillExecution;
import com.kubuy.dubbo.exception.RepeatKillException;
import com.kubuy.dubbo.exception.SeckillCloseException;
import com.kubuy.dubbo.exception.SeckillException;
import com.kubuy.dubbo.pojo.Seckill;

@Path("seckill")
@Consumes({MediaType.APPLICATION_JSON, MediaType.TEXT_XML})
@Produces({ContentType.APPLICATION_JSON_UTF_8, ContentType.TEXT_XML_UTF_8})
public interface SeckillDubboService {
	@POST
	@Path("add")
	public void addSeckill(
			@QueryParam(value="title") String title,
			@QueryParam(value="num") Integer num,
			@QueryParam(value="itemId") Long itemId,
			@QueryParam(value="price") Long price,
			@QueryParam(value="cost") Long cost,
			@QueryParam(value="date") Date date,
			@QueryParam(value="time") Long time
			);
	
	/**
	 * 根据秒杀系统的时间查询当前场次的秒杀列表
	 * @return	
	 */
	@GET
	@Path("list")
	public List<Seckill> findCurSeckill();
	/**
	 * 根据秒杀id查询秒杀对象,秒杀详情表
	 * @param seckillId	秒杀id
	 * @return	秒杀对象
	 */
	@GET
	@Path("detail")
	public Seckill findSeckillDetail(
			@QueryParam(value="seckillId") Long seckillId
			);
	/**
	 * 获取秒杀系统的服务器时间毫秒数
	 * @return
	 */
	@GET
	@Path("time/now")
	public Long getTimeStamp();
	/**
	 * 根据秒杀商品的秒杀id,为其生成一个秒杀信息暴露对象
	 * 并返回,若秒杀正在进行中,则该对象的exposer属性为
	 * true,且会附带一个url地址
	 * @param seckillId	秒杀id
	 */
	@GET
	@Path("exposer")
	public Exposer exposer(
			@QueryParam(value="seckillId") Long seckillId
			);	
	/**
	 * 执行秒杀操作
	 * @param seckillId	秒杀商品的id
	 * @param userId	用户id
	 * @param url	秒杀地址
	 * @return	秒杀执行结果对象
	 */
	@POST
	@Path("execution")
	public SeckillExecution execution (
			@QueryParam(value="seckillId") Long seckillId,
			@QueryParam(value="userId")	Long userId,
			@QueryParam(value="itemId") Long itemId,
			@QueryParam(value="url") String url
			) throws SeckillCloseException,RepeatKillException,SeckillException;
	
}
