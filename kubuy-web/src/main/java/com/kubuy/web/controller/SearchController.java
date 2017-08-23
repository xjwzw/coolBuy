package com.kubuy.web.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kubuy.dubbo.pojo.Item;
import com.kubuy.web.service.SearchService;


@Controller
public class SearchController {
	@Autowired
	private SearchService searchService;
	@RequestMapping("/search")
	public String searcher(Model model,String q,@RequestParam(defaultValue="1")Integer page ,@RequestParam(defaultValue="20")Integer rows) throws IOException, Exception{
		//准备数据
		try {
			q=new String(q.getBytes("ISO-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		List<Item> itemList=searchService.queryList(page, rows, q);
		
		model.addAttribute("itemList",itemList);
		model.addAttribute("query",q);
		return "search";
		
	}
}
