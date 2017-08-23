package com.kubuy.seckill.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kubuy.dubbo.pojo.SuccessSeckill;
import com.kubuy.seckill.mapper.SuccessSeckillMapper;

@Service
public class RabbitSuccessSeckillService {
	@Autowired
	private SuccessSeckillMapper successSeckillMapper;
	public void addSuccessSeckill(SuccessSeckill successSeckill){
		successSeckillMapper.insertSelective(successSeckill);
	}
}
