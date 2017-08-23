package com.kubuy.common.vo;

import java.io.Serializable;

/**
 * 将所有的httpClient请求全部封装成json数据
 * @author Administrator
 *
 */
public class SeckillResult<T> implements Serializable {

    private boolean success;	//请求是否成功
    private T data;	//请求返回的数据
    private String error;	//请求返回的错误

    public SeckillResult() {
		super();
	}

	public SeckillResult(boolean success, T data) {
        this.success = success;
        this.data = data;
    }

    public SeckillResult(boolean success, String error) {
        this.success = success;
        this.error = error;
    }

    public boolean isSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }

    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }
}