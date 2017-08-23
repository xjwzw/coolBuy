package com.kubuy.web.service;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kubuy.common.service.RedisService;
import com.kubuy.web.threadlocal.UserThreadLocal;
import com.rabbitmq.client.Channel;
import com.rabbitmq.client.Connection;
import com.rabbitmq.client.ConnectionFactory;
import com.rabbitmq.client.QueueingConsumer;

@Service
public class RedPacketService {
	
	@Autowired
	private RedisService redisService;
	
	private final static String QUEUE_NAME = "giveRedpacket";
	
	//抢红包
	public double giveRedPacket() throws Exception {
		Long userId = 10L;
		if(redisService.sadd(userId+"ku", userId+"") != 0L){
				//设置缓存时间
				redisService.expire(userId+"ku", 60);
				// 获取到连接以及mq通道
		        Connection connection = getConnection();
		        Channel channel = connection.createChannel();

		        // 声明队列
		        channel.queueDeclare(QUEUE_NAME, false, false, false, null);
		        
		        // 同一时刻服务器只会发一条消息给消费者，每一次服务器只会向客户端发送一条
		        channel.basicQos(1);
		        
		        // 定义队列的消费者
		        QueueingConsumer consumer = new QueueingConsumer(channel);
		        
		        // 监听队列，手动返回完成
		        channel.basicConsume(QUEUE_NAME, false, consumer);
		       
		        //抢红包
		        QueueingConsumer.Delivery delivery = consumer.nextDelivery();
	            String message = new String(delivery.getBody());
	            
	            //休眠
	            Thread.sleep(10);
	            
	            //获取余额
	            String balance = redisService.get("balance");
	            
	            if(StringUtils.isEmpty(message)||StringUtils.isEmpty(balance)||Double.parseDouble(balance)<=0){
	            	return -1;
	            }
	            
	            double money = Double.parseDouble(message);
	           
	            // 返回确认状态
	            channel.basicAck(delivery.getEnvelope().getDeliveryTag(), false);

				//更改余额
				redisService.set("balance", (Double.parseDouble(balance)-money)+"");
				redisService.set(userId+"", money+"");
			
				return money;
			
		}
		 return  0;//0代表已经抢过红包了
	}
	
	public static Connection getConnection() throws Exception {
        //定义连接工厂
        ConnectionFactory factory = new ConnectionFactory();
        //设置服务地址
        factory.setHost("192.168.247.20");
        //端口
        factory.setPort(5672);
        //设置账号信息，用户名、密码、vhost
        factory.setVirtualHost("/kubuy");
        factory.setUsername("kubuyadmin");
        factory.setPassword("123456");
        // 通过工程获取连接
        Connection connection = factory.newConnection();
        return connection;
    }
}
