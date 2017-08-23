package com.kubuy.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kubuy.dubbo.pojo.Item;
import com.kubuy.dubbo.service.ItemDubboService;

@Controller
@RequestMapping("/item")
public class ItemController {
	@Autowired
	private ItemDubboService itemDubboSerivce;
	@RequestMapping("/detail/{itemId}")
	public String itemDetail(Model model,@PathVariable Long itemId){
		Item item=itemDubboSerivce.findItemById(itemId);
		String[] images=item.getImage().split(".");
		model.addAttribute("item", item);
		model.addAttribute("images", images);
		return "item";
	}
}
