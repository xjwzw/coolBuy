package com.kubuy.cart.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kubuy.cart.mapper.CartMapper;
import com.kubuy.common.service.BaseService;
import com.kubuy.dubbo.pojo.Cart;


@Service
public class CartService extends BaseService<Cart>{
	@Autowired
	private CartMapper cartMapper;
	
	//我的购物车（某人的购物车数据）
	public List<Cart> queryByUserId(Long userId){
		Cart param = new Cart();
		param.setUserId(userId);
		
		//利用pojo对象来传递where条件参数，要求：属性不为null的才拼接到where
		List<Cart> cartList = cartMapper.select(param);
		return cartList;
	}
	
	//新增商品到购物车中
	public void saveCart(Cart cart){
		cart.setCreated(new Date());
		cart.setUpdated(cart.getCreated());
		
		/*
		 * 判断此用户的此
		 * 商品是否存在，存在直接累加数量=旧的商品的数量+新的商品的数量
		 * 商品不存在，直接新增
		 */
		Cart param = new Cart();
		param.setUserId(cart.getUserId());
		param.setItemId(cart.getItemId());
		
		Cart curCart = super.queryByWhere(param);
		if(null == curCart){
			cartMapper.insertSelective(cart);
		}else{
			curCart.setNum(curCart.getNum() + cart.getNum());
			cartMapper.updateByPrimaryKey(curCart);
		}
	}
	
	//更新商品数量
	public void updateNum(Cart cart){
		cartMapper.updateNum(cart);
	}
	
	//删除某个用户的某个商品
	public void deleteCart(Cart cart){
		cartMapper.delete(cart);
	}
}
