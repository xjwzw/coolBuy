package com.kubuy.dubbo.service;

import java.io.IOException;
import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.kubuy.dubbo.pojo.Order;

@Path("order")
@Consumes({MediaType.APPLICATION_JSON, MediaType.TEXT_XML})
@Produces({ContentType.APPLICATION_JSON_UTF_8, ContentType.TEXT_XML_UTF_8})
public interface OrderDubboService {
	/**
	 * 添加订单
	 * @param orderJson	订单对象转化成的json串
	 * @return	订单id
	 */
	@POST
	@Path("create")
	public String createOrder(
			@QueryParam(value="orderJson") String orderJson
			) throws JsonParseException, JsonMappingException, IOException;
	/**
	 * 根据订单id查询订单
	 * @param orderId 订单id
	 * @return 订单对象
	 */
	@GET
	@Path("query")
	public Order findOrderById(
			@QueryParam(value="orderId") String orderId
			);
	/**
	 * 根据用户id查询该用户的所有订单
	 * @param userId	用户id
	 * @return	订单集合对象
	 */
	@GET
	@Path("find")
	public List<Order> findOrderByUserId(
			@QueryParam(value="userId") Long userId
			);
	/**
	 * 查询所有的订单
	 * @return
	 */
	@GET
	@Path("findAll")
	public List<Order> findAllOrders();
	/**
	 * 修改订单的状态
	 * @param oldStatus	订单的旧状态
	 * @param newStatus	订单的新状态
	 */
	@POST
	@Path("changeOrderStatus")
	public void changeOrderStatusById(
			@QueryParam(value="orderId") String orderId,
			@QueryParam(value="newStatus") Integer newStatus
			);

}
