package com.kubuy.manage.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kubuy.common.vo.PaginationResult;
import com.kubuy.dubbo.pojo.Item;
import com.kubuy.dubbo.service.ItemCatDubboService;
import com.kubuy.dubbo.service.ItemDubboService;

@Controller
@RequestMapping("/contentManagement/item")
public class ItemController {
	@Autowired
	private ItemDubboService itemDubboService;
	@Autowired
	private ItemCatDubboService itemCatDubboService;
	@RequestMapping("/query")
	@ResponseBody
	public PaginationResult findItems(Integer sEcho,Integer iDisplayStart,Integer iDisplayLength){
		System.out.println(sEcho);
		System.out.println(iDisplayStart);
		System.out.println(iDisplayLength);
		PaginationResult result= itemDubboService.findPageItems(iDisplayStart,iDisplayLength);
		result.setsEcho(sEcho);
		return result;
	}
	@RequestMapping("/queryItemName")
	public void findItemCatName(String cid,HttpServletResponse response) throws IOException{
		String name=itemCatDubboService.queryCatName(cid);
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().write(name);
	}
	@RequestMapping("/seckill-toAdd/{itemId}")
	public String toAdd(Model model,@PathVariable("itemId") Long itemId){
		Item item=itemDubboService.findItemById(itemId);
		model.addAttribute("item", item);
		return "contentManagement/item/seckill-toAdd";
	}
}
