package com.kubuy.redpacket.pojo;

import java.util.Date;

public class RedPacket {
	
	private Integer id;
	private Double  total; //'总金额',
	private Integer  num;		//'总红包数'
	private Double  balance; // '剩余金额'
	private Integer  status;    // '1代表还没抢完 2代表签完',
	private Date  created; //红包发布时间
	private Date   gameOver; //红包更新时间
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Double getTotal() {
		return total;
	}
	public void setTotal(Double total) {
		this.total = total;
	}
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	public Double getBalance() {
		return balance;
	}
	public void setBalance(Double balance) {
		this.balance = balance;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public Date getCreated() {
		return created;
	}
	public void setCreated(Date created) {
		this.created = created;
	}
	public Date getGameOver() {
		return gameOver;
	}
	public void setGameOver(Date gameOver) {
		this.gameOver = gameOver;
	}
	
}
