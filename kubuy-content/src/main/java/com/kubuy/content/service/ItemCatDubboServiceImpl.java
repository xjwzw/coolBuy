package com.kubuy.content.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.kubuy.content.mapper.ItemCatMapper;
import com.kubuy.dubbo.pojo.ItemCat;
import com.kubuy.dubbo.service.ItemCatDubboService;

public class ItemCatDubboServiceImpl implements ItemCatDubboService {
	@Autowired
	private ItemCatMapper itemCatMapper;
	@Override
	public String queryCatName(String cid) {
		ItemCat itemCat=itemCatMapper.selectByPrimaryKey(cid);
		return itemCat.getName();
	}

}
