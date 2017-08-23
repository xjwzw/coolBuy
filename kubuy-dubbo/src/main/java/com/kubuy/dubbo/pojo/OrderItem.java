package com.kubuy.dubbo.pojo;

import java.io.Serializable;

import javax.persistence.Id;
import javax.persistence.Table;

//订单商品表
@Table(name="tb_order_item")
public class OrderItem implements Serializable {
	//商品id与订单id一起作为联合主键
	@Id
	private String itemId;	//商品id
	@Id
	private String orderId;	//订单id
	private Integer num;	//商品的购买数量
	private String title;	//商品标题
	private Long price;	//商品单价
	private String totalFee;	//商品的总价
	private String picPath;	//商品的图片url
	public String getItemId() {
		return itemId;
	}
	public void setItemId(String itemId) {
		this.itemId = itemId;
	}
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Long getPrice() {
		return price;
	}
	public void setPrice(Long price) {
		this.price = price;
	}
	public String getTotalFee() {
		return totalFee;
	}
	public void setTotalFee(String totalFee) {
		this.totalFee = totalFee;
	}
	public String getPicPath() {
		return picPath;
	}
	public void setPicPath(String picPath) {
		this.picPath = picPath;
	}
	@Override
	public String toString() {
		return "OrderItem [itemId=" + itemId + ", orderId=" + orderId + ", num=" + num + ", title=" + title + ", price="
				+ price + ", totalFee=" + totalFee + ", picPath=" + picPath + "]";
	}

}
