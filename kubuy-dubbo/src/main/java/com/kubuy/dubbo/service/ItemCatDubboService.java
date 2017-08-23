package com.kubuy.dubbo.service;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.QueryParam;
@Path("itemCat")
public interface ItemCatDubboService {
	@GET
	@Path("findCatName")
	public String queryCatName(
			@QueryParam(value="cId") String cid
			);
}
