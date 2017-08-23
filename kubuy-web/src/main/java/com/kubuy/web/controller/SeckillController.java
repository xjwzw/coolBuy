package com.kubuy.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kubuy.common.enums.SeckillStatEnum;
import com.kubuy.common.vo.Exposer;
import com.kubuy.common.vo.SeckillExecution;
import com.kubuy.common.vo.SeckillResult;
import com.kubuy.dubbo.exception.RepeatKillException;
import com.kubuy.dubbo.exception.SeckillCloseException;
import com.kubuy.dubbo.pojo.Seckill;
import com.kubuy.dubbo.service.SeckillDubboService;

@Controller
@RequestMapping("/seckill")
public class SeckillController {
	@Autowired
	private SeckillDubboService seckillDubboService;
	/**
	 * 查询当前秒杀场次的秒杀列表
	 * @param model
	 * @return
	 */
	@RequestMapping("/list")
	public String seckillList(Model model){
		List<Seckill> list=seckillDubboService.findCurSeckill();
		if(list!=null&&list.size()>0){
			Long time=list.get(0).getEndTime().getTime()-System.currentTimeMillis();
			model.addAttribute("time",time);
		}
		model.addAttribute("seckillList", list);
		return "seckillList";
	}
	/**
	 * 查询秒杀详情页面
	 * @return
	 */
	@RequestMapping("{seckillId}/detail")
	public String seckillDetail(@PathVariable Long seckillId,Model model){
		Seckill seckill=seckillDubboService.findSeckillDetail(seckillId);
		model.addAttribute("seckill", seckill);
		return "seckillDetail";
	}
	/**
	 * 获取秒杀系统服务器的系统时间的毫秒数
	 */
	@RequestMapping("/time/now")
	@ResponseBody
	public SeckillResult<Long> queryTime(){
		Long now=seckillDubboService.getTimeStamp();
		return new SeckillResult<Long>(true,now);
	}
	/**
	 * 根据秒杀商品的秒杀id,为其生成一个秒杀地址封装到Exposer对象返回,
	 * 避免秒杀没有开始,用户提前输入秒杀地址,因此秒杀地址
	 * 动态生成,并且加密
	 * @param seckillId	秒杀id
	 */
	@RequestMapping("/{seckillId}/exposer")
	@ResponseBody
	public SeckillResult<Exposer> exposer(@PathVariable Long seckillId){
		try{
			Exposer exposer=seckillDubboService.exposer(seckillId);
			return new SeckillResult<Exposer>(true,exposer);
		}catch (Exception e){
			e.printStackTrace();
			return new SeckillResult<Exposer>(false,e.getMessage());
		}
	}
	/**
	 * 根据秒杀id,给对应的商品执行秒杀操作,即减库存,增加明细以及添加订单等操作
	 * @param seckillId	秒杀id
	 * @param url	加密后的url,通过该url判断该秒杀是否有效
	 */
	@RequestMapping("/{seckillId}/{itemId}/{url}/execution")
	@ResponseBody
	public SeckillResult<SeckillExecution> execution(@PathVariable Long seckillId,@PathVariable Long itemId,@PathVariable String url){
		Long userId=7L;//TODO
		SeckillExecution execution = seckillDubboService.execution(seckillId, userId, itemId, url);
		return new SeckillResult<SeckillExecution>(true, execution);

	}
}
