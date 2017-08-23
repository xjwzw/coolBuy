package com.kubuy.common.vo;

import java.io.Serializable;
import java.util.List;

/**
 * 工具类,分页结果集对象
 * @author Administrator
 *
 */
public class PaginationResult implements Serializable {
	private Integer sEcho;	//当前页数,自客户端 sEcho
	private Integer iTotalRecords;	//实际的行数
	private Integer iTotalDisplayRecords;	//显示的行数,这个要和上面写的一样
	private List<?> aaData;	//表格中的实际数据
	public PaginationResult(){
		
	}
	
	public PaginationResult(Integer iTotalRecords, List<?> aaData) {
		super();
		this.iTotalRecords = iTotalRecords;
		this.iTotalDisplayRecords=iTotalRecords;
		this.aaData = aaData;
	}
	public Integer getsEcho() {
		return sEcho;
	}
	public void setsEcho(Integer sEcho) {
		this.sEcho = sEcho;
	}
	public Integer getiTotalRecords() {
		return iTotalRecords;
	}
	public void setiTotalRecords(Integer iTotalRecords) {
		this.iTotalRecords = iTotalRecords;
	}
	public Integer getiTotalDisplayRecords() {
		return iTotalDisplayRecords;
	}
	public void setiTotalDisplayRecords(Integer iTotalDisplayRecords) {
		this.iTotalDisplayRecords = iTotalDisplayRecords;
	}
	public List<?> getAaData() {
		return aaData;
	}
	public void setAaData(List<?> aaData) {
		this.aaData = aaData;
	}
	
}
