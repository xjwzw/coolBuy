package com.kubuy.cart.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.kubuy.dubbo.pojo.Cart;
import com.kubuy.dubbo.service.CartDubboService;


//封装现有的service，实现dubbox业务接口
public class CartDubboServiceImpl implements CartDubboService{
	@Autowired
	private CartService cartService;

	public List<Cart> queryByUserId(Long userId) {
		return cartService.queryByUserId(userId);
	}

	public void saveCart(Long userId, Long itemId, String itemTitle, String itemImage, Long itemPrice, Integer num) {
		Cart param = new Cart();
		param.setUserId(userId);
		param.setItemId(itemId);
		param.setItemTitle(itemTitle);
		param.setItemImage(itemImage);
		param.setItemPrice(itemPrice);
		param.setNum(num);
		
		cartService.saveCart(param);
	}

	public void updateNum(Long userId, Long itemId, Integer num) {
		Cart param = new Cart();
		param.setUserId(userId);
		param.setItemId(itemId);
		param.setNum(num);
		
		cartService.updateNum(param);
	}

	public void deleteCart(Long userId, Long itemId) {
		Cart param = new Cart();
		param.setUserId(userId);
		param.setItemId(itemId);
		
		cartService.deleteCart(param);
	}

}
