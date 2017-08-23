package com.kubuy.common.vo;

import java.io.Serializable;

import com.kubuy.common.enums.SeckillStatEnum;

/**
 * 秒杀执行后的结果集对象
 * @author Administrator
 *
 */
public class SeckillExecution implements Serializable {

	private Long seckillId;	//秒杀id
	private int state;	//秒杀执行的结果状态 1:秒杀成功,0:秒杀结束,-1:重复秒杀,-2:系统异常,-3:数据篡改
	private String stateInfo;	//秒杀执行的系统返回信息

	public SeckillExecution() {
		super();
	}

	public SeckillExecution(Long seckillId, int state, String stateInfo) {
		super();
		this.seckillId = seckillId;
		this.state = state;
		this.stateInfo = stateInfo;
	}
	
	 public SeckillExecution(long seckillId, SeckillStatEnum statEnum) {
	        this.seckillId = seckillId;
	        this.state = statEnum.getState();
	        this.stateInfo = statEnum.getInfo();
	   }
	public Long getSeckillId() {
		return seckillId;
	}
	public void setSeckillId(Long seckillId) {
		this.seckillId = seckillId;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getStateInfo() {
		return stateInfo;
	}
	public void setStateInfo(String stateInfo) {
		this.stateInfo = stateInfo;
	}
	@Override
	public String toString() {
		return "SeckillExecution [seckillId=" + seckillId + ", state=" + state + ", stateInfo=" + stateInfo + "]";
	}

	
}
