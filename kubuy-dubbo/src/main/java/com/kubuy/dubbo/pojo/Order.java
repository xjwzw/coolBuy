package com.kubuy.dubbo.pojo;

import java.util.Date;
import java.util.List;

import javax.persistence.Id;
import javax.persistence.Table;

import com.kubuy.common.po.BasePojo;
//订单表
@Table(name="tb_order")
public class Order extends BasePojo {
	@Id
	private String orderId;	//订单id 订单号：登录用户id+当前时间戳
	private List<OrderItem> orderItems;	//从对象,一对多
	private OrderShipping orderShipping;	//从对象,一对一
	private String payment;	//订单金额 精确到2位小数；单位：元。如：200.09，表示：200元9分
	private Integer status;	//订单状态  状态：1、未付款2、已付款3、未发货4、已发货5、交易成功6、交易关闭
	private Date paymentTime;	//付款时间
	private Date consignTime;	//发货时间
	private Date endTime;	//交易完成时间
	private Date closeTime;	//交易关闭时间
	private String shippingName;	//物流名称
	private String shippingCode;	//物流单号
	private Long userId;	//用户id
	private String buyerMessage;	//买家留言
	private String buyerNick;	//买家昵称
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public List<OrderItem> getOrderItems() {
		return orderItems;
	}
	public void setOrderItems(List<OrderItem> orderItems) {
		this.orderItems = orderItems;
	}
	public OrderShipping getOrderShipping() {
		return orderShipping;
	}
	public void setOrderShipping(OrderShipping orderShipping) {
		this.orderShipping = orderShipping;
	}
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public Date getPaymentTime() {
		return paymentTime;
	}
	public void setPaymentTime(Date paymentTime) {
		this.paymentTime = paymentTime;
	}
	public Date getConsignTime() {
		return consignTime;
	}
	public void setConsignTime(Date consignTime) {
		this.consignTime = consignTime;
	}
	public Date getEndTime() {
		return endTime;
	}
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
	public Date getCloseTime() {
		return closeTime;
	}
	public void setCloseTime(Date closeTime) {
		this.closeTime = closeTime;
	}
	public String getShippingName() {
		return shippingName;
	}
	public void setShippingName(String shippingName) {
		this.shippingName = shippingName;
	}
	public String getShippingCode() {
		return shippingCode;
	}
	public void setShippingCode(String shippingCode) {
		this.shippingCode = shippingCode;
	}
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public String getBuyerMessage() {
		return buyerMessage;
	}
	public void setBuyerMessage(String buyerMessage) {
		this.buyerMessage = buyerMessage;
	}
	public String getBuyerNick() {
		return buyerNick;
	}
	public void setBuyerNick(String buyerNick) {
		this.buyerNick = buyerNick;
	}
	@Override
	public String toString() {
		return "Order [orderId=" + orderId + ", orderItems=" + orderItems + ", orderShipping=" + orderShipping
				+ ", payment=" + payment + ", status=" + status + ", paymentTime=" + paymentTime + ", consignTime="
				+ consignTime + ", endTime=" + endTime + ", closeTime=" + closeTime + ", shippingName=" + shippingName
				+ ", shippingCode=" + shippingCode + ", userId=" + userId + ", buyerMessage=" + buyerMessage
				+ ", buyerNick=" + buyerNick + "]";
	}
	
	
}
