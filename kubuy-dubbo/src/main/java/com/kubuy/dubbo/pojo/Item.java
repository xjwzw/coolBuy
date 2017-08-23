package com.kubuy.dubbo.pojo;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.apache.solr.client.solrj.beans.Field;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.kubuy.common.po.BasePojo;



/**
 * 
 * @author Airey
 * @date   2017年7月22日
 */
@Table(name="tb_item")
@JsonIgnoreProperties(ignoreUnknown=true)
// 商品信息
public class Item extends BasePojo {
	// 主键信息(自增)
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Field
	private Long id;	//商品id
	@Field
	private String title;	//商品标题
	@Field
	private Long cost;	//商品成本价
	@Field
	private Long price;	//商品销售价
	@Field
	private Integer num;	//商品库存
	@Field
	private String image;	//商品图片url
	private String cid;	//商品分类id
	private Integer status;	//商品状态  '默认值为1，可选值：1正常，2下架，3删除'
	@Transient
	private String[] images;
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
	public String[] getImages(){
		return this.image.split(",");
	}

	public void setUrl(String url) {
		this.url = url;
	}

}
