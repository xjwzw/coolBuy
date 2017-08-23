package com.kubuy.web.service;

import java.io.IOException;
import java.util.List;

import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.impl.HttpSolrClient;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kubuy.dubbo.pojo.Item;
@Service
public class SearchService {
	@Autowired
	HttpSolrClient httpSolrClient;
	public List<Item> queryList(Integer page,Integer rows,String key) throws Exception, IOException{
		//构建查询对象
		SolrQuery sq=new SolrQuery();
		sq.setQuery("title:"+key);
		//分页数据
		sq.setStart((Math.max(page, 1)-1)*rows);
		sq.setRows(rows);
		//查询		
		QueryResponse response=httpSolrClient.query(sq);
		List<Item> itemList=response.getBeans(Item.class);
		return itemList;
	}
}
