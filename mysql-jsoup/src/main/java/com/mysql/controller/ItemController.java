/**
 * 
 */
package com.mysql.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Random;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mysql.pojo.Item;
import com.mysql.pojo.ItemCat;
import com.mysql.service.ItemService;

/**
 * @author Airey
 * @date   2017年8月17日
 */
@Controller
public class ItemController {
	@Autowired
	private ItemService itemService;

	Item item = new Item();
	File file = new File("D:\\vip.html");

	@RequestMapping("index")
	public String index() throws IOException {

		try {
			//获取所有的三级分类网址
			List<String> cat3 = JsoupVip.getAllLevel3(file);
			// 总的处理
			for (String catUrl : cat3) { 
				// 获取当前分类下的所有列表链接
				List<String> pageUrls = JsoupVip.getPageUrls(catUrl);
				for (String pageUrl : pageUrls) {
					// 某一页所有商品链接
					List<String> itemUrls = JsoupVip.getItemUrls(pageUrl);
					if (itemUrls == null) {
						continue;
					}
					for (String itemUrl : itemUrls) {
						item = JsoupVip.getItem(itemUrl, pageUrl);
						//插入数据库
						itemService.save(item);
						System.out.println("66666666666666666666666");
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.err.println("Main() Error,Please check your error!");
			return "error";
		}

		return "index";

	}

}
