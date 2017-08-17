package com.shop.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.common.vo.Exposer;
import com.shop.common.vo.SeckillExecution;
import com.shop.common.vo.SeckillResult;
import com.shop.web.pojo.Seckill;
import com.shop.web.service.SeckillService;

@Controller
@RequestMapping("/seckill")
public class SeckillController {
	@Autowired
	private SeckillService seckillService;
	@RequestMapping("/list")
	public String findCurrentSeckill(Model model) throws Exception{
		List<Seckill> scList=seckillService.findCurrentSeckill();
		model.addAttribute("skList", scList);
		return "seckill";
	}
	@RequestMapping("/{seckillId}/detail")
	public String findSeckillDeatil(@PathVariable Long seckillId,Model model) throws Exception{
		Seckill seckill=seckillService.findSeckillById(seckillId);
		model.addAttribute("seckill", seckill);
		return "detail";
	}

	@RequestMapping("/time/now")
	@ResponseBody
	public SeckillResult<Long> time() throws Exception{
		return seckillService.findSysTime();
	}
	
	@RequestMapping("/{seckillId}/exposer")
	@ResponseBody
	public SeckillResult<Exposer> exposer(@PathVariable Long seckillId) throws Exception{	
		return seckillService.exposer(seckillId);
	}
	@RequestMapping("/{seckillId}/{url}/execution")
	@ResponseBody
	public SeckillResult<SeckillExecution> execution(@PathVariable Long seckillId,@PathVariable String url) throws Exception{
		Long userId=7L;	
		return seckillService.executeSeckill(seckillId,url,userId);
	}
}
