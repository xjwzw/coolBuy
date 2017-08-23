package com.kubuy.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.converter.json.MappingJacksonValue;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kubuy.common.util.CookieUtils;
import com.kubuy.common.vo.SysResult;
import com.kubuy.dubbo.pojo.User;
import com.kubuy.dubbo.service.UserDubboService;
@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserDubboService userService;
	//全局唯一
	public static final String JT_TICKET = "JT_TICKET";
	
	//转向注册页面
	@RequestMapping("/register")
	public String register(){
		return "register";
	}
	
	//转向登录页面
	@RequestMapping("/login")
	public String login(){
		return "login";
	}
	
	//注册
	@RequestMapping("/doRegister")
	@ResponseBody
	public SysResult doRegister(User user) throws Exception{
		return SysResult.oK(userService.register(user.getUsername(),user.getPassword(),user.getPhone()));
	}
	
	//登录
	@RequestMapping("/doLogin")
	@ResponseBody
	public SysResult doLogin(User user, HttpServletRequest request, HttpServletResponse response) throws Exception{
		String ticket = userService.login(user.getUsername(),user.getPassword());
		if(StringUtils.isEmpty(ticket)){
			return SysResult.build(201, "用户名或密码错误");
		}else{
			//写入cookie，k(固定死值，本地浏览器)v(ticket)
			CookieUtils.setCookie(request, response, JT_TICKET, ticket);
			
			return SysResult.oK(ticket);
		}
	}
	
	//登出
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request, HttpServletResponse response){
		//删除cookie
		CookieUtils.deleteCookie(request, response, JT_TICKET);
		
		return "index";
	}
	@RequestMapping("/{telephone}")
	@ResponseBody	
	public Object getCapycode(String callback, @PathVariable String telephone){
		boolean b = userService.getCapycode(telephone);
		return SysResult.oK(b);
	}
	
	@RequestMapping("/check/{param}/{type}")
	@ResponseBody	//它就被全局的转换器替代
	public Object check(String callback, @PathVariable String param,@PathVariable Integer type){
		try{
			Boolean b = userService.check(param, type);
			
			//改造返回值为jsonp格式
			MappingJacksonValue mjv = new MappingJacksonValue(SysResult.oK(b));
			mjv.setJsonpFunction(callback);
			return mjv;
		}catch(Exception e){
			return SysResult.build(201, e.getMessage());
		}
	}
}
