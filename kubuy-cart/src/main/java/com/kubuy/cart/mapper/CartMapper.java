package com.kubuy.cart.mapper;

import com.kubuy.common.mapper.SysMapper;
import com.kubuy.dubbo.pojo.Cart;

public interface CartMapper extends SysMapper<Cart>{
	public void updateNum(Cart cart);
}
