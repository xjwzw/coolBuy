/**
 * 
 */
package com.mysql.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.lang3.StringUtils;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.junit.Test;

import com.fasterxml.jackson.databind.JsonNode;
import com.mysql.pojo.Item;

/**
 * @author Airey
 * @date 2017年8月17日
 */
public class JsoupVip {
	public void run() throws IOException {
		File file = new File("D:\\vip.html");
		// JsoupVip.getAllLevel3(file);

		// JsoupVip.getPageNum(catUrl);

		// JsoupVip.getPageUrls(catUrl);

		String catUrl = "https://category.vip.com/search-1-0-1.html?q=3|29734||&rp=30071|29737&ff=beauty|0|1|1";
		// JsoupVip.getItemUrls(pageUrl);

		/*
		 * List<String> pageUrls = JsoupVip.getPageUrls(catUrl); for (String url :
		 * pageUrls) { JsoupVip.getItemUrls(url); }
		 */

		String url = "https://category.vip.com/search-1-0-1.html?q=3|29574||&rp=30066|29992&ff=sports|0|1|1";
		List<String> itemUrlList = JsoupVip.getItemUrls(url);

		for (String itemUrl : itemUrlList) {
			JsoupVip.getTitle(itemUrl);
			JsoupVip.getPrice(itemUrl);
			JsoupVip.getImage(itemUrl);

		}

	}

	// 获取商品详细信息
	// 封装成Item对象
	// 获取商品的详细信息 http://www.vip.com/detail-1521504-264614148.html
	public static Item getItem(String itemUrl, String pageUrl) {
		Item item = new Item();
		item.setTitle(JsoupVip.getTitle(itemUrl));
		item.setPrice(JsoupVip.getPrice(itemUrl));
		item.setCost(JsoupVip.getCost(itemUrl));
		item.setImage(JsoupVip.getImage(itemUrl));
		item.setStatus(1);
		item.setNum(9500);
		item.setCreated(new Date());
		item.setUpdated(item.getCreated());
		item.setUrl(itemUrl);
		item.setCid(JsoupVip.getCid(pageUrl));

		// item.setCid(JsoupClassify.LevelThree(file));
		return item;
	}

	// 获取所有的三级分类
	public static List<String> getAllLevel3(File file) throws IOException {
		List<String> levelList = new ArrayList<String>();
		Document doc = Jsoup.parse(file, "utf-8");
		Elements els = doc.select(".cate-list-mores .cate-fix a");
		for (Element ele : els) {
			// System.out.println(ele);
			String href = "http:" + ele.attr("href");
			if (href.startsWith("http://category.vip.com")) {
				// System.out.println(href);
				levelList.add(href);
			}
		}
		// System.out.println("商品总类的个数:" + levelList.size());
		return levelList;
	}

	// 获取某个分类的总页数
	private static Integer getPageNum(String catUrl) {
		try {
			String text = Jsoup.connect(catUrl).get().select(".cat-oper-wrap div div span").get(0).text();
			// System.out.println(text); 1/10
			String[] num = text.split("/");
			// System.out.println(Arrays.toString(num));
			Integer pageNum = Integer.parseInt(num[1]);
			return pageNum;
		} catch (IOException e) {
			return 0; // 有些如果不正确的，就忽略
		}
	}

	// 获取某个分类下的所有的列表页面链接
	// http://category.vip.com/search-1-0-1.html?q=3|30037||&rp=30074|30063#J_catSite
	public static List<String> getPageUrls(String catUrl) {
		try {

			List<String> pageUrlsList = new ArrayList<String>();
			Integer pageNum = JsoupVip.getPageNum(catUrl);
			System.out.println("一共有: " + pageNum + "页");
			Pattern pattern = Pattern.compile("^(.+)(1.html)(.+)$");
			Matcher matcher = pattern.matcher(catUrl);
			if (matcher.find()) {
				for (int i = 1; i <= pageNum; i++) {
					String url = matcher.group(1) + i + ".html" + matcher.group(3);
					pageUrlsList.add(url);
					// System.out.println("第" + i + "页");
				}
			}
			return pageUrlsList;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("getPageUrls() Error!");
			return new ArrayList<String>();
		}

	}

	// 获取列表页面中的所有的商品链接
	// https://category.vip.com/search-1-0-2.html?q=3|29852||&rp=30068|29997&ff=digital|0|5|2
	public static List<String> getItemUrls(String pageUrl) {
		List<String> itemList = new ArrayList<String>();
		try {
			Elements els = Jsoup.connect(pageUrl).get().select("div div .goods-image a");
			for (Element ele : els) {
				String href = "http:" + ele.attr("href");
				// System.out.println(href);
				itemList.add(href);
			}
			// System.out.println(itemList.size());
			return itemList;
		} catch (IOException e) {
			return null;
		}
	}

	// 获取某个商品的标题
	// https://www.vip.com/detail-1475786-243732396.html
	public static String getTitle(String itemUrl) {
		String title = "";
		try {
			title = Jsoup.connect(itemUrl).get().select(".pi-title-box .pib-title p").get(1).text();
			// System.out.println(title);
		} catch (Exception e) {
			return null;
		}

		return title;
	}

	// 获取某个商品的价格，ajax,json
	public static Long getPrice(String itemUrl) {
		String price = "";
		try {
			price = Jsoup.connect(itemUrl).get().select("#J-pi-price-box span em[class='J-price']").text();
			// System.out.println(price);

			Long p = Long.parseLong(price);
			return p * 100;

		} catch (Exception e) {
			return 9999999L;
		}

	}

	// 获取某个商品的成本
	public static Long getCost(String itemUrl) {

		try {
			Long cost = (long) (getPrice(itemUrl) * 0.80);
			return cost;
		} catch (Exception e) {
			return null;
		}
	}

	// 获取某个商品的图片
	// TODO
	public static String getImage(String itemUrl) {
		String imgUrl = "";
		try {

			Elements elements = Jsoup.connect(itemUrl).get().select("div .show-midpic a");
			for (Element ele : elements) {
				String href = "http:" + ele.attr("href");
				String imgurl = ImageUploadUtils.getImageUrlForMysql(href);
				imgUrl += imgurl + ",";
			}
			if (imgUrl.length() > 2) {
				imgUrl = imgUrl.substring(0, imgUrl.length() - 1);
				// System.out.println(imgUrl);
			}
			return imgUrl;

		} catch (Exception e) {
			return null;
		}
	}

	// 获取某个商品的分类ID-->cid
	// url="http://category.vip.com/search-1-0-1.html?q=3|30043||&rp=30074|29741&ff=women|0|1|2";
	public static String getCid(String pageUrl) {
		String cid = "";
		try {
			Pattern pattern = Pattern
					.compile("^http://category.vip.com/.+(\\?q=3\\|)(\\d+)(\\|\\|&rp=)(\\d+)\\|(\\d+)(.+)$");

			Matcher matcher = pattern.matcher(pageUrl);
			if (matcher.find()) {
				// System.out.println(matcher.group(2));// 30057
				cid = matcher.group(2);
			}
			return cid;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

}
