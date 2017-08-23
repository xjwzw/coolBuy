package com.kubuy.common.vo;

import java.io.Serializable;

/**
 * 用于暴露秒杀信息的处理结果对象
 * @author Administrator
 *
 */
public class Exposer implements Serializable {

	private boolean exposed;	//代表该秒杀对象是否符合要求(即属于当前秒杀场次的)
	private String url;	//通过md5加密后的秒杀地址
	private Long seckillId;	//秒杀id
	private Long curTime;	//秒杀系统当前时间
	private Long startTime;	//秒杀开始时间
	private Long endTime;	//秒杀结束时间	
	
	public Exposer() {
		super();
	}



	public Exposer(boolean exposed, String url, Long seckillId, Long curTime, Long startTime, Long endTime) {
		super();
		this.exposed = exposed;
		this.url = url;
		this.seckillId = seckillId;
		this.curTime = curTime;
		this.startTime = startTime;
		this.endTime = endTime;
	}



	public boolean isExposed() {
		return exposed;
	}
	public void setExposed(boolean exposed) {
		this.exposed = exposed;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public Long getSeckillId() {
		return seckillId;
	}
	public void setSeckillId(Long seckillId) {
		this.seckillId = seckillId;
	}
	public Long getCurTime() {
		return curTime;
	}
	public void setCurTime(Long curTime) {
		this.curTime = curTime;
	}
	public Long getStartTime() {
		return startTime;
	}
	public void setStartTime(Long startTime) {
		this.startTime = startTime;
	}
	public Long getEndTime() {
		return endTime;
	}
	public void setEndTime(Long endTime) {
		this.endTime = endTime;
	}
	@Override
	public String toString() {
		return "Exposer [exposed=" + exposed + ", url=" + url + ", seckillId=" + seckillId + ", curTime=" + curTime
				+ ", startTime=" + startTime + ", endTime=" + endTime + "]";
	}
	
}
