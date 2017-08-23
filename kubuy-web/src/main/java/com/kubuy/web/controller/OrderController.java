package com.kubuy.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.kubuy.common.vo.SysResult;
import com.kubuy.dubbo.pojo.Cart;
import com.kubuy.dubbo.pojo.Order;
import com.kubuy.dubbo.service.CartDubboService;
import com.kubuy.dubbo.service.OrderDubboService;

@Controller
@RequestMapping("/order")
public class OrderController {

	private static final ObjectMapper MAPPER=new ObjectMapper();
	@Autowired
	private OrderDubboService orderDubboService;
	@Autowired
	private CartDubboService cartDubboService;
	//转向订单页面
	@RequestMapping("/create")
	public String orderCreate(Model model) throws Exception{
		//页面要准备购物车的信息carts（获取当前用户的购物车的所有数据）
		Long userId = 7L;
		List<Cart> carts = cartDubboService.queryByUserId(userId);
		model.addAttribute("carts", carts);
		return "order-cart";
	}
	
	//提交订单 /service/order/submit
	@RequestMapping("/submit")
	@ResponseBody
	public SysResult orderSubmit(Order order) throws Exception{
		Long userId = 7L;
		order.setUserId(userId);
		String orderJson=MAPPER.writeValueAsString(order);
		String orderId = orderDubboService.createOrder(orderJson);
		return SysResult.oK(orderId);
	}
	@RequestMapping("/show")
	public String findOrderByUserId(Model model){
		Long userId=7L;
		List<Order> orderList=orderDubboService.findOrderByUserId(userId);
		model.addAttribute("orderList", orderList);
		return "orderList";
	}
	

	//转向成功提示页面/order/success.html?id=123
	@RequestMapping("/success")
	public String success(String id, Model model) throws Exception{
		//准备数据，根据orderId查询orders
		Order orders = orderDubboService.findOrderById(id);
		model.addAttribute("order", orders);		
		return "success";
	}
}
