package com.kubuy.dubbo.exception;
/**
 * 定义秒杀相关业务的所有异常
 * @author Administrator
 *
 */
public class SeckillException extends RuntimeException {

	public SeckillException(String message, Throwable cause) {
		super(message, cause);
	}

	public SeckillException(String message) {
		super(message);
	}

}
