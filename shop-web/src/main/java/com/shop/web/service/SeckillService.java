package com.shop.web.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.shop.common.service.HttpClientService;
import com.shop.common.vo.Exposer;
import com.shop.common.vo.SeckillExecution;
import com.shop.common.vo.SeckillResult;
import com.shop.web.pojo.Seckill;

@Service
public class SeckillService {

	private static final ObjectMapper MAPPER=new ObjectMapper();
	@Autowired
	private HttpClientService client;
	public List<Seckill> findCurrentSeckill() throws Exception {
		String url="http://localhost:8093/seckill/list";
		String json=client.doGet(url);
		JsonNode data = MAPPER.readTree(json);
		Object obj = null;
		if (data.isArray() && data.size() > 0) {
			obj = MAPPER.readValue(data.traverse(),
					MAPPER.getTypeFactory().constructCollectionType(List.class, Seckill.class));
		}
		return (List<Seckill>) obj;
	}
	public Seckill findSeckillById(Long seckillId) throws Exception {
		String url="http://localhost:8093/seckill/"+seckillId+"/detail";
		String json=client.doGet(url);
		Seckill sc=MAPPER.readValue(json, Seckill.class);
		return sc;
	}
	public SeckillResult<Long> findSysTime() throws Exception {
		String url="http://localhost:8093/seckill/time/now";
		String json=client.doGet(url);
		JsonNode jsonNode = MAPPER.readTree(json);
		String data=jsonNode.get("data").asText();
		return new SeckillResult<Long>(true, Long.parseLong(data));
	}
	public SeckillResult<Exposer> exposer(Long seckillId) throws Exception {
		String url="http://localhost:8093/seckill/"+seckillId+"/exposer";
		String json=client.doGet(url);
		SeckillResult<Exposer> result=MAPPER.readValue(json, SeckillResult.class);
		return result;
	}
	public SeckillResult<SeckillExecution> executeSeckill(Long seckillId, String url, Long userId) throws Exception {
		String sendUrl="http://localhost:8093/seckill/"+seckillId+"/"+url+"/execution";
		Map<String,String> map=new HashMap<String,String>();
		map.put("userId", userId+"");
		String json=client.doPost(sendUrl, map);
		SeckillResult<SeckillExecution> result=MAPPER.readValue(json, SeckillResult.class);
		return result;
	}

}
