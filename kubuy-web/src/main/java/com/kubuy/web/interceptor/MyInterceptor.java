package com.kubuy.web.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.kubuy.common.util.CookieUtils;
import com.kubuy.dubbo.pojo.User;
import com.kubuy.dubbo.service.UserDubboService;
import com.kubuy.web.controller.UserController;
import com.kubuy.web.threadlocal.UserThreadLocal;

//springmvc拦截器
public class MyInterceptor implements HandlerInterceptor{
	@Autowired
	private UserDubboService userDubboService;
	private static final ObjectMapper MAPPER = new ObjectMapper();

	//处理controller方法之前调用
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		//获取userId
		/*
		 * 步骤：
		 * 1、读取cookie
		 * 2、调用sso业务接口去获取redis中的值
		 * 3、UserThreaLocal.user
		 * 4、判断如果cookie,redis直接跳转登录页面
		 */
		String ticket = CookieUtils.getCookieValue(request, UserController.JT_TICKET);
		if(StringUtils.isNotEmpty(ticket)){
			String userJson = userDubboService.queryByTicket(ticket);
			
			if(StringUtils.isNotEmpty(userJson)){
				//获取到当前user对象
				User curUser = MAPPER.readValue(userJson, User.class);
				UserThreadLocal.set(curUser);
				return true;
			}else{
				UserThreadLocal.set(null);
			}
		}else{
			UserThreadLocal.set(null);
		}
		
		//cookie不存在，redis值不存在，重定向登录页面
		response.sendRedirect("/user/login.html");
		return false;	//false坑，不放行，true放行
	}

	//处理controller方法之后调用
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		
	}

	//渲染renderViewResolver之后调用
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

}
