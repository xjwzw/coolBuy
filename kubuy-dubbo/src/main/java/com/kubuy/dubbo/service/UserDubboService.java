package com.kubuy.dubbo.service;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.kubuy.common.vo.SysResult;
@Path("sso")
@Consumes({MediaType.APPLICATION_JSON, MediaType.TEXT_XML})
@Produces({ContentType.APPLICATION_JSON_UTF_8, ContentType.TEXT_XML_UTF_8})
public interface UserDubboService {
	@GET
	@Path("check")
	public Boolean check(
			@QueryParam(value="param")String param, 
			@QueryParam(value="type")Integer type
	);
		
	//注册
	@POST
	@Path("register")
	public String register(
			@QueryParam(value="username")String username,
			@QueryParam(value="password")String password,
			@QueryParam(value="phone")String phone
	);
	
	//登录
	@GET
	@Path("login")
	public String login (
			@QueryParam(value="username")String username,
			@QueryParam(value="password")String password 
	);
	
	@GET
	@Path("query")
	public String queryByTicket(@QueryParam(value="ticket")String ticket);
	
	
	@POST
	@Path("capycode")
	public boolean getCapycode(String telephone);
}
