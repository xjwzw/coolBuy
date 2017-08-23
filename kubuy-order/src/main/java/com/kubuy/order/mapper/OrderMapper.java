package com.kubuy.order.mapper;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.kubuy.common.mapper.SysMapper;
import com.kubuy.dubbo.pojo.Order;

public interface OrderMapper extends SysMapper<Order> {

	public void insertOrderAndInfo(Order order);

	public Order findOrderById(String orderId);

	public List<Order> findOrderByUserId(Long userId);

	public List<Order> findAllOrders();

	public void changeOrderStatusById(@Param("orderId") String orderId,@Param("newStatus") Integer newStatus,@Param("col") String col);

	public void closeOrder(Date date);

}
