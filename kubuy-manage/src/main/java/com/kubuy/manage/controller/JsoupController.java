package com.kubuy.manage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kubuy.common.vo.JsoupResult;
import com.kubuy.dubbo.service.ItemDubboService;

@Controller
@RequestMapping("/jsoup")
public class JsoupController {
	@Autowired
	private ItemDubboService itemDubboSerivce;
	@RequestMapping("/linechart/monitor")
	@ResponseBody
	public JsoupResult findResult(){
		JsoupResult result=itemDubboSerivce.findResult();
		System.out.println(result);
		return result;
	}
}
