package com.shop.web.pojo;

import java.util.Date;

import javax.persistence.Id;
import javax.persistence.Table;

import com.shop.common.po.BasePojo;

public class Seckill extends BasePojo {

	private Long seckillId;	//秒杀id	
	private String title;	//秒杀标题
	private Integer num;	//秒杀商品的库存
	private Long itemId;	//秒杀商品的id	
	private Long price;	//秒杀商品的原价
	private Long cost;	//秒杀价
	private Date startTime;	//秒杀开始时间
	private Date endTime;	//秒杀结束时间
	public Long getSeckillId() {
		return seckillId;
	}
	public void setSeckillId(Long seckillId) {
		this.seckillId = seckillId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	public Long getItemId() {
		return itemId;
	}
	public void setItemId(Long itemId) {
		this.itemId = itemId;
	}
	public Long getPrice() {
		return price;
	}
	public void setPrice(Long price) {
		this.price = price;
	}
	public Long getCost() {
		return cost;
	}
	public void setCost(Long cost) {
		this.cost = cost;
	}
	public Date getStartTime() {
		return startTime;
	}
	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}
	public Date getEndTime() {
		return endTime;
	}
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
	@Override
	public String toString() {
		return "Seckill [seckillId=" + seckillId + ", title=" + title + ", num=" + num + ", itemId=" + itemId
				+ ", price=" + price + ", cost=" + cost + ", startTime=" + startTime + ", endTime=" + endTime + "]";
	}


}
