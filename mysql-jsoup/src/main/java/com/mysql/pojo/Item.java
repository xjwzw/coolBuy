package com.mysql.pojo;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.jt.common.po.BasePojo;

/**
 * 
 * @author Airey
 * @date   2017年7月22日
 */
// 商品信息
@Table(name = "tb_item") // 表示对象与数据表一一对应
public class Item extends BasePojo {
	// 主键信息(自增)
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;// 商品id
	private String title;// 商品标题
	private Long cost;
	private Long price;// 商品价格 (后期由js计算价格/100)
	private Integer num;// 商品数量
	private String image;// 商品图片
	private String cid;// 分类号
	private Integer status;// 状态 默认值为1，可选值：1正常，2下架，3删除
	private String url;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Long getCost() {
		return cost;
	}

	public void setCost(Long cost) {
		this.cost = cost;
	}

	public Long getPrice() {
		return price;
	}

	public void setPrice(Long price) {
		this.price = price;
	}

	public Integer getNum() {
		return num;
	}

	public void setNum(Integer num) {
		this.num = num;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getCid() {
		return cid;
	}

	public void setCid(String cid) {
		this.cid = cid;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

}
