package com.kubuy.manage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class HomeController {
	@RequestMapping("/index")
	public String toIndex(){
		return "index";
	}
	@RequestMapping("/{firstMenu}/{secondMenu}/list")
	public String toModule(@PathVariable String firstMenu,@PathVariable String secondMenu){
		return firstMenu+"/"+secondMenu+"/"+secondMenu+"-list";
	}
}
