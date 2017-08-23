package com.kubuy.order.quartz;

import java.util.Date;

import org.joda.time.DateTime;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.context.ApplicationContext;
import org.springframework.scheduling.quartz.QuartzJobBean;

import com.kubuy.order.mapper.OrderMapper;

/**
 * 业务类,完成订单的定期删除,启动后会单独的开启一个quartz管理进程，
 * 内部就按触发配置进行调度，就一直的判断，
 * 如果到了时间就触发业务调用，业务的调用就执行业务类
 * 
 */
public class PaymentOrderJobDetail extends QuartzJobBean {
	//将来quartz会调用这个方法
	protected void executeInternal(JobExecutionContext context) throws JobExecutionException {
		//获取spring框架
		ApplicationContext ac=(ApplicationContext) context.getJobDetail().getJobDataMap().get("applicationContext");	
		//计算当前系统时间减去24小时后的时间
		Date date=new DateTime().minusDays(1).toDate();
		//调用spring容器管理的Mapper
		ac.getBean(OrderMapper.class).closeOrder(date);
	}

}
