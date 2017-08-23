/**
 * 
 */
package com.mysql.controller;

import java.io.File;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Map.Entry;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mysql.pojo.ItemCat;
import com.mysql.service.ItemCatService;
import com.mysql.service.ItemService;

/**
 * @author Airey
 * @date   2017年8月19日
 */
@Controller
public class ItemCatController {
	@Autowired
	private ItemCatService itemCatService;

	ItemCat itemCat = new ItemCat();
	File file = new File("D:\\vip.html");

	@RequestMapping("class")
	public String classify() {
		Random random = new Random();
		Map<String, String> map = JsoupClassify.LevelOne(file);
		// System.out.println(map);
		for (Entry<String, String> item : map.entrySet()) {
			itemCat.setId(item.getKey());
			itemCat.setName(item.getValue());
			itemCat.setCatLevel(1);
			itemCat.setParentId("0");
			itemCat.setSortOrder(random.nextInt(100) + 1);
			itemCat.setStatus(1);
			itemCat.setCreated(new Date());
			itemCat.setUpdated(itemCat.getCreated());

			itemCatService.save(itemCat);
		}
		System.out.println("9999999999999999999999999999");
		return "class";
	}

	@RequestMapping("level")
	public String getLevel2() {
		List<ItemCat> itemCatList = JsoupClassify.LevelTwo(file);
		for (ItemCat itemCat : itemCatList) {
			itemCatService.save(itemCat);
		}
		System.out.println("77777777777777777777777");
		return "class";
	}

	@RequestMapping("cart")
	public String getLevel3() {
		List<ItemCat> itemCatList = JsoupClassify.LevelThree(file);
		for (ItemCat itemCat : itemCatList) {
			itemCatService.save(itemCat);
			System.out.println("888888888888888888888888");
		}
		return "class";
	}

}
