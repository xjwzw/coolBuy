/**
 * 
 */
package com.mysql.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import com.mysql.pojo.ItemCat;

/**
 * @author Airey
 * @date   2017年8月19日
 */
public class JsoupClassify {
	// 一级分类id
	private static List<String> idList = new ArrayList<String>();

	static {
		idList.add("30074");// 品质女装
		idList.add("30073");// 潮流男装
		idList.add("30072");// 时尚鞋包
		idList.add("30071");// 美妆个护
		idList.add("30066");// 运动户外
		idList.add("30068");// 家电数码
		idList.add("30070");// 母婴用品
		idList.add("29751");// 手表配饰
		idList.add("30069");// 居家用品
		idList.add("30067");// 美食专区
		idList.add("33333");// 唯品国际
		idList.add("81108");// 唯品奢
		idList.add("71958");// 唯品生活
	}

	public static void main(String[] args) {
		File file = new File("D:\\vip.html");
		// LevelOne(file);
		// LevelTwo(file);
		LevelThree(file);
	}

	// 一级分类
	public static Map<String, String> LevelOne(File file) {
		Map<String, String> map = new HashMap<String, String>();

		try {
			String str = Jsoup.parse(file, "utf-8").select("#aside #navList li a .nav-link-text").text();
			String[] values = str.split(" ");
			// System.out.println(Arrays.toString(values));

			for (int i = 0; i < values.length; i++) {
				map.put(idList.get(i), values[i]);
			}

		} catch (IOException e) {
			// TODO
			e.printStackTrace();
		}
		// System.out.println(map);
		return map;
	}

	// 二级分类
	public static List<ItemCat> LevelTwo(File file) {
		List<ItemCat> list = new ArrayList<ItemCat>();

		try {
			Elements elements = Jsoup.parse(file, "utf-8")
					.select(".cate-second-temp .cate-list-fix .cate-list-title a");
			for (Element element : elements) {
				ItemCat itemCat = new ItemCat();
				String text = element.text();
				String href = element.attr("href");
				// (//category.vip.com/search-1-0-1.html?q=2|30079|&rp=30073|0&ff=man|0|1|0)
				Pattern pattern = Pattern.compile("^//category.vip.com/.+(\\?q=2\\|)(\\d+)(\\|&rp=)(\\d+)(.+)$");
				Matcher matcher = pattern.matcher(href);
				if (matcher.find()) {
					System.out.println(matcher.group(2));// 29741
					itemCat.setId(matcher.group(2));
					// System.out.println(matcher.group(4));// 30074
					itemCat.setParentId(matcher.group(4));
				}
				itemCat.setName(text);
				itemCat.setCatLevel(2);
				itemCat.setStatus(1);
				itemCat.setCreated(new Date());
				itemCat.setUpdated(itemCat.getCreated());
				itemCat.setSortOrder(new Random().nextInt(100) + 1);
				list.add(itemCat);
			}
		} catch (IOException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return list;
	}

	// 三级分类
	public static List<ItemCat> LevelThree(File file) {
		List<ItemCat> itemCatList = new ArrayList<ItemCat>();
		try {
			Elements elements = Jsoup.parse(file, "utf-8").select(".cate-list-fix .cate-list-mores .cate-fix a");
			for (Element element : elements) {
				ItemCat itemCat = new ItemCat();
				String text = element.text();
				String href = element.attr("href");
				// "//category.vip.com/search-1-0-1.html?q=3|30057||&rp=30074|29741&ff=women|0|1|1"
				Pattern pattern = Pattern
						.compile("^//category.vip.com/.+(\\?q=3\\|)(\\d+)(\\|\\|&rp=)(\\d+)\\|(\\d+)(.+)$");
				Matcher matcher = pattern.matcher(href);
				if (matcher.find()) {
					// System.out.println(matcher.group(2));// 30057
					itemCat.setId(matcher.group(2));
					// System.out.println(matcher.group(5));// 29741
					itemCat.setParentId(matcher.group(5));
				}
				itemCat.setName(text);
				itemCat.setStatus(1);
				itemCat.setCatLevel(3);
				itemCat.setSortOrder(new Random().nextInt(1000) + 100);
				itemCat.setCreated(new Date());
				itemCat.setUpdated(itemCat.getCreated());
				itemCatList.add(itemCat);
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// 637
		// System.out.println(itemCatList.size());
		return itemCatList;
	}

}
