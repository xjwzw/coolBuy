package com.kubuy.content.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.kubuy.common.mapper.SysMapper;
import com.kubuy.common.vo.JsoupResult;
import com.kubuy.dubbo.pojo.Item;

public interface ItemMapper extends SysMapper<Item> {

	public List<Item> findPageInfo(@Param("start") Integer start,@Param("length") Integer length);

	public JsoupResult findJsoupResult();

	public List<String> findHourList();

	public Integer findCountByHour(String hour);
	
}
