package com.kubuy.sso.mapper;

import java.util.Map;

import com.kubuy.common.mapper.SysMapper;
import com.kubuy.dubbo.pojo.User;

public interface UserMapper extends SysMapper<User> {
	//检查唯一性
	public Integer check(Map<String, Object> map) ;
		

}
