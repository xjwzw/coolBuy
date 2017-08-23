/**
 * 
 */
package com.kubuy.dubbo.pojo;

import javax.persistence.Id;
import javax.persistence.Table;

import com.kubuy.common.po.BasePojo;

/**
 * @author Airey
 * @date   2017年8月19日
 */
@Table(name = "tb_item_cat")
public class ItemCat extends BasePojo {
	@Id
	private String id;
	private String parentId;
	private String name;
	private Integer status;
	private Integer sortOrder;
	private Integer catLevel;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getParentId() {
		return parentId;
	}

	public void setParentId(String parentId) {
		this.parentId = parentId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Integer getSortOrder() {
		return sortOrder;
	}

	public void setSortOrder(Integer sortOrder) {
		this.sortOrder = sortOrder;
	}

	public Integer getCatLevel() {
		return catLevel;
	}

	public void setCatLevel(Integer catLevel) {
		this.catLevel = catLevel;
	}

	@Override
	public String toString() {
		return "ItemCat [id=" + id + ", parentId=" + parentId + ", name=" + name + ", status=" + status + ", sortOrder="
				+ sortOrder + ", catLevel=" + catLevel + "]";
	}

}
