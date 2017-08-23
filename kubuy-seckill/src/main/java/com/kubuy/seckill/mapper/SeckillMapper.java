package com.kubuy.seckill.mapper;

import java.util.Date;
import java.util.List;

import com.kubuy.common.mapper.SysMapper;
import com.kubuy.dubbo.pojo.Seckill;

public interface SeckillMapper extends SysMapper<Seckill> {

	public List<Seckill> findCurSeckillList(Date curTime);
}
