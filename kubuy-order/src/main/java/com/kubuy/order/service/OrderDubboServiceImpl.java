package com.kubuy.order.service;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import org.joda.time.DateTime;
import org.springframework.beans.factory.annotation.Autowired;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.kubuy.dubbo.pojo.Order;
import com.kubuy.dubbo.service.OrderDubboService;
import com.kubuy.order.mapper.OrderMapper;

public class OrderDubboServiceImpl implements OrderDubboService {
	
	private static final ObjectMapper MAPPER=new ObjectMapper();
	@Autowired
	private OrderMapper orderMapper;
	@Override
	public String createOrder(String orderJson) throws JsonParseException, JsonMappingException, IOException {
		Order order=MAPPER.readValue(orderJson, Order.class);
		String orderId=order.getUserId()+""+System.currentTimeMillis();
		order.setOrderId(orderId);
		orderMapper.insertOrderAndInfo(order);
		return orderId;
	}

	@Override
	public Order findOrderById(String orderId) {
		return orderMapper.findOrderById(orderId);
	}

	@Override
	public List<Order> findOrderByUserId(Long userId) {		
		return orderMapper.findOrderByUserId(userId);
	}

	@Override
	public List<Order> findAllOrders() {
		return orderMapper.findAllOrders();
	}

	@Override
	public void changeOrderStatusById(String orderId, Integer newStatus) {
		//订单状态  状态：1、未付款2、已付款3、未发货4、已发货5、交易成功6、交易关闭
		String col="";
		if(newStatus==2||newStatus==3){
			col="payment_time";
		}else if(newStatus==4){
			col="consign_time";
		}else if(newStatus==5){
			col="end_time";
		}else if(newStatus==6){
			col="close_time";
		}
		orderMapper.changeOrderStatusById(orderId,newStatus,col);		
	}



}
