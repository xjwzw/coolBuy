package com.kubuy.sso.service;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.alibaba.fastjson.JSON;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.kubuy.common.service.BaseService;
import com.kubuy.common.service.RedisService;
import com.kubuy.dubbo.pojo.User;
import com.kubuy.dubbo.service.UserDubboService;
import com.kubuy.sso.mapper.UserMapper;
import com.kubuy.sso.util.CapychaUtill;
import com.kubuy.sso.util.ChuangLanSmsUtil;
import com.kubuy.sso.util.SmsSendRequest;
import com.kubuy.sso.util.SmsSendResponse;

public class UserDubboServiceImpl extends BaseService<User> implements UserDubboService{
	@Autowired
	private UserMapper userMapper;
	@Autowired
	private RedisService redisService;
	private static final ObjectMapper MAPPER =new ObjectMapper();
	// 用户平台API账号(非登录账号,示例:N1234567)
	private static String account = "N8398193";
	// 用户平台API密码(非登录密码)
	private static String pswd = "Ugba5223A";
	//请求地址请登录253云通讯自助通平台查看或者询问您的商务负责人获取
	private static String smsSingleRequestServerUrl = "http://smssh1.253.com/msg/send/json";
	
	//按用户名.手机号.邮箱,进行检查,检查唯一性
	public Boolean check(String param, Integer type){
		Map<String,Object> map = new HashMap<String,Object>();
		if(1==type){
			map.put("col", "username");
		}else if(2==type){
			map.put("col", "phone");
		}else if(3==type){
			map.put("col", "email");
		}
		map.put("val", param);
		Integer count = userMapper.check(map);
		if(count>0){
			return true;
		}else{
			return false;
		}
	}
	//注册
	public String register(String username,String password,String phone){
		User user = new User();
		user.setUsername(username);
		user.setPassword(DigestUtils.md5Hex(password));
		user.setPhone(phone);
		user.setCreated(new Date());
		user.setUpdated(user.getCreated());
		super.saveSelective(user);;
		return user.getUsername();
	}
	
	//登录
	public String login (String username,String password ){
		User param =new User();
		//1.根据用户名查询,返回当前对象
		param.setUsername(username);
		User curUser = super.queryByWhere(param);
		if(curUser!=null){
			//密码比较
			password= DigestUtils.md5Hex(password);
			if(password.equals(curUser.getPassword())){
				try{
					//3.产生令牌,唯一性,动态性,混淆性,提升安全性!
					String ticket = DigestUtils.md5Hex("TICKET_"+username+curUser.getId()+System.currentTimeMillis());
					//4.写入redis
					String userJson = MAPPER.writeValueAsString(curUser);
					
					redisService.set(ticket, userJson, 60*60*24*7);
					
					return ticket;
				}catch(JsonProcessingException e){
					e.printStackTrace();
				}
			}
		}
		return new String("");
	}
	
	//根据ticket来查询当前用户信息
	public String queryByTicket(String ticket){
		try {
			String userJson = redisService.get(ticket);
			return userJson;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}	
	}
	@Override
	public boolean getCapycode(String telephone) {
		try {
			String capycha = CapychaUtill.getCapycha();
			
			redisService.set(telephone, capycha, 60*30);
			
			String msg = "【253云通讯】[酷购网]你好,你的验证码是"+capycha;
			//手机号码
			String phone = telephone;
			//状态报告
			String report= "true";
			
			SmsSendRequest smsSingleRequest = new SmsSendRequest(account, pswd, msg, phone,report);
			
			String requestJson = JSON.toJSONString(smsSingleRequest);
			
			String response = ChuangLanSmsUtil.sendSmsByPost(smsSingleRequestServerUrl, requestJson);
			
			SmsSendResponse smsSingleResponse = JSON.parseObject(response, SmsSendResponse.class);
			
			if(smsSingleResponse.getErrorMsg()==""){
				return true;
			}else{
				return false;
			}
			
		} catch (Exception e) {
			return false;
		}
	}
	
}
	
