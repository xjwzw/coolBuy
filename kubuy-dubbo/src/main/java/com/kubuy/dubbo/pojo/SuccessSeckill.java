package com.kubuy.dubbo.pojo;

import javax.persistence.Id;
import javax.persistence.Table;

import com.kubuy.common.po.BasePojo;
@Table(name="tb_success_seckill")
public class SuccessSeckill extends BasePojo {
	@Id
	private Long seckillId;	//秒杀id
	@Id
	private Long userId;	//用户id
	
	private Long itemId;	//秒杀商品的商品id
	
	public SuccessSeckill() {
		super();
	}
	public SuccessSeckill(Long seckillId, Long userId, Long itemId) {
		super();
		this.seckillId = seckillId;
		this.userId = userId;
		this.itemId = itemId;
	}
	public Long getSeckillId() {
		return seckillId;
	}
	public void setSeckillId(Long seckillId) {
		this.seckillId = seckillId;
	}
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public Long getItemId() {
		return itemId;
	}
	public void setItemId(Long itemId) {
		this.itemId = itemId;
	}
	@Override
	public String toString() {
		return "SuccessSeckill [seckillId=" + seckillId + ", userId=" + userId + ", itemId=" + itemId + "]";
	}


	

}
