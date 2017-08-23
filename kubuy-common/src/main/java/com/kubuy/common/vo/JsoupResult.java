package com.kubuy.common.vo;

import java.io.Serializable;
import java.util.List;

public class JsoupResult implements Serializable {
	private List<Integer> countList;
	private List<String> hourList;
	public List<Integer> getCountList() {
		return countList;
	}
	public void setCountList(List<Integer> countList) {
		this.countList = countList;
	}
	public List<String> getHourList() {
		return hourList;
	}
	public void setHourList(List<String> hourList) {
		this.hourList = hourList;
	}
	@Override
	public String toString() {
		return "JsoupResult [countList=" + countList + ", hourList=" + hourList + "]";
	}
	
	
}
