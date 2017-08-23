package com.kubuy.redpacket.job;

import java.util.Date;

import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.context.ApplicationContext;
import org.springframework.scheduling.quartz.QuartzJobBean;

import com.kubuy.redpacket.service.RedPacketService;


public class PaymentOrderScanJob extends QuartzJobBean{

	//将来quartz会回调这个方法
	protected void executeInternal(JobExecutionContext context) throws JobExecutionException {
		//获取Spring框架，"applicationContext"在整合配置文件中定义
		ApplicationContext ac = (ApplicationContext) context.getJobDetail().getJobDataMap().get("applicationContext");
		
		//第一种方式：httpClient方式调用
		//第二种方式：调用service类
		//第三种方式：调用Mapper接口
		
		//获取调用接口，利用spring容器之间获取mybatis接口，之间调用接口的方法
		ac.getBean(RedPacketService.class).creatRedPacket(new Date());
	}

}
