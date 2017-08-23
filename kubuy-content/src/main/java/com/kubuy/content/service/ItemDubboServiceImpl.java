package com.kubuy.content.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.kubuy.common.vo.JsoupResult;
import com.kubuy.common.vo.PaginationResult;
import com.kubuy.content.mapper.ItemMapper;
import com.kubuy.dubbo.pojo.Item;
import com.kubuy.dubbo.service.ItemDubboService;

public class ItemDubboServiceImpl implements ItemDubboService {
	@Autowired
	private ItemMapper itemMapper;
	@Override
	public PaginationResult findPageItems(Integer start, Integer length) {
		int count=itemMapper.selectCount(null);
		List<Item> itList=itemMapper.findPageInfo(start,length);
		
		return new PaginationResult(count,itList);
	}
	@Override
	public Item findItemById(Long itemId) {
		return itemMapper.selectByPrimaryKey(itemId);
	}
	@Override
	public JsoupResult findResult() {
		JsoupResult result=new JsoupResult();
		List<Integer> countList=new ArrayList<Integer>();
		List<String> hourList=itemMapper.findHourList();
		for (String hour : hourList) {
			Integer count=itemMapper.findCountByHour(hour);
			countList.add(count);
		}
		result.setHourList(hourList);
		result.setCountList(countList);
		return result;
	}


}
