package com.kubuy.dubbo.exception;
/**
 * 重复秒杀异常
 * @author Administrator
 *
 */
public class RepeatKillException extends SeckillException {

	public RepeatKillException(String message, Throwable cause) {
		super(message, cause);
	}

	public RepeatKillException(String message) {
		super(message);
	}

}
