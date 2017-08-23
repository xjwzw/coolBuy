package com.kubuy.web.controller;

import java.io.File;
import java.nio.charset.Charset;

import org.junit.Test;

import com.google.common.collect.Lists;
import com.google.common.io.Files;

import redis.clients.jedis.Jedis;

public class DistrubuteLimit {
	static int i = 1;
	public Long acquire(String ip) throws Exception {
		String luaScript = Files.toString(new File("limit.lua"), Charset.defaultCharset());
	    Jedis jedis = new Jedis("192.168.247.10", 6379);
	    String key = ip + 1; //此处将当前时间戳取秒数
	    String limit;
	    if(jedis.exists(key)){//防刷
	    	i++;
	    	if(i>5){
	    		return 0L;
	    	}
	    	limit = "1"; //限流大小
	    	return (Long)jedis.eval(luaScript,Lists.newArrayList(key), Lists.newArrayList("10", limit));
	    }else{
	    	limit = "1"; //限流大小
	    	return (Long)jedis.eval(luaScript,Lists.newArrayList(key), Lists.newArrayList("10", limit));
	    }
	}
	
}
