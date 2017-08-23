package com.kubuy.common.enums;
/**
 * 定义一个枚举,封装所有的秒杀状态与秒杀执行系统返回信息
 * @author Administrator
 *
 */
public enum SeckillStatEnum {
	SUCCESS(1,"秒杀成功"),
	END(0,"秒杀结束"),
	REPEAT_KILL(-1,"重复秒杀"),
	INNER_ERROR(-2,"系统异常"),
	DATE_REWRITE(-3,"数据篡改");

	private int state;
	private String info;

	SeckillStatEnum(int state, String info) {
		this.state = state;
		this.info = info;
	}

	public int getState() {
		return state;
	}


	public String getInfo() {
		return info;
	}


	public static SeckillStatEnum stateOf(int index)
	{
		for (SeckillStatEnum state : values())
		{
			if (state.getState()==index)
			{
				return state;
			}
		}
		return null;
	}
}
