package com.kubuy.manage.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kubuy.dubbo.pojo.Seckill;
import com.kubuy.dubbo.service.SeckillDubboService;

@Controller
@RequestMapping("/contentManagement/seckill")
public class SeckillController extends BaseController {
	@Autowired
	private SeckillDubboService seckillDubboService;
	@RequestMapping("/add")
	public void addSeckill(Seckill seckill,Date date,Long time,HttpServletResponse response) throws IOException{

		seckillDubboService.addSeckill(seckill.getTitle(), seckill.getNum(), seckill.getItemId(), seckill.getPrice(), seckill.getCost(), date,time);
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().write("添加秒杀成功");
		
	}
}
