package com.kubuy.web.controller;


import java.io.File;
import java.nio.charset.Charset;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicLong;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kubuy.dubbo.pojo.Cart;
import com.kubuy.dubbo.service.CartDubboService;


@Controller
@RequestMapping("/cart")
public class CartController {
	@Autowired
	private CartDubboService cartDubboService;
	private static AtomicLong atomic = new AtomicLong(0);
	@RequestMapping("/show")
	public String myCart(Model model,HttpServletRequest request,HttpServletResponse response) throws Exception{
		final DistrubuteLimit distrubuteLimit = new DistrubuteLimit();
        final CountDownLatch latch = new CountDownLatch(1);//两个工人的协作
		System.out.println(666);
		Long userId = 7L;
		//List<Cart> cartList = cartService.queryByUserId(userId);
		String ip = request.getRemoteAddr();
        Long rev = distrubuteLimit.acquire(ip);
        if (rev == 1) {
            System.out.println("t:"+ "请求成功");
            List<Cart> cartList = cartDubboService.queryByUserId(userId);
    		model.addAttribute("cartList",cartList);
    		return "cart";
        } else {//降级
            System.out.println("t:"+ "被限流了");
            response.setHeader("Refresh", "3"); 
            return "redirect:/item/detail/1.html";
        }
		
	}
	//新增商品到购物车 cart/add/${item.id}.html
	@RequestMapping("/add/{itemId}")
	public String add(Cart cart) throws Exception{
		Long userId = 7L;
		cartDubboService.saveCart(userId, cart.getItemId(), cart.getItemTitle(), cart.getItemImage(), cart.getItemPrice(), cart.getNum());
		
		return "redirect:/cart/show.html";	//跟浏览器的url一致
	}
	
	//更新商品数量，重新设置  /service/cart/update/num/562379/4
	@RequestMapping("/update/num/{itemId}/{num}")
	@ResponseBody
	public String updateNum(Cart cart) throws Exception{
		Long userId = 7L;
		
		cartDubboService.updateNum(userId, cart.getItemId(), cart.getNum());
		return "";	//页面如果不设置返回值，业务操作正常，但是回调时js错误，给一个空值，它结构正确不报错
	}
	
	//删除某个用户的某个商品 /cart/delete/562379.html
	@RequestMapping("/delete/{itemId}")
	public String deleteCart(Cart cart) throws Exception{
		Long userId = 7L;
		
		cartDubboService.deleteCart(userId, cart.getItemId());
		return "redirect:/cart/show.html";
	}
}
