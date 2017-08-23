package com.kubuy.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kubuy.common.vo.SysResult;
import com.kubuy.web.service.RedPacketService;

@Controller
@RequestMapping("/redpacket")
public class RedPacketController {
	
	@Autowired
	private RedPacketService redPacketService;
	
	//显示红包金额
	@RequestMapping("/get")
	@ResponseBody
	public SysResult getRedPacket() throws Exception{
		double money = redPacketService.giveRedPacket();
		if(money > 0){
			return SysResult.oK("恭喜您，抢到"+money+"元");
		}else if(money == 0){
			return SysResult.oK("您已经抢过红包了!");
		}else{
			return SysResult.oK("暂时没有红包，下次再来吧");
		}
	}
	
}
