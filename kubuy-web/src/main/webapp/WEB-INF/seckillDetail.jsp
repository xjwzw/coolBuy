<%@page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>秒杀详情页</title>
    <%@include file="seckillHead.jsp" %>
</head>
<body>
<div class="container">
    <div class="panel panel-default text-center">
        <div class="pannel-heading">
            <h1>${seckill.title}</h1>
        </div>

        <div class="panel-body">
            <h2 class="text-danger">
                <%--显示time图标--%>
                <span class="glyphicon glyphicon-time"></span>
                <%--展示倒计时--%>
                <span class="glyphicon" id="seckill-box"></span>
            </h2>
        </div>
    </div>
</div>


</body>
<%--jQery文件,务必在bootstrap.min.js之前引入--%>
<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>
<script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<%--使用CDN 获取公共js http://www.bootcdn.cn/--%>
<%--jQuery Cookie操作插件--%>
<script src="http://cdn.bootcss.com/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
<%--jQuery countDown倒计时插件--%>
<script src="http://cdn.bootcss.com/jquery.countdown/2.1.0/jquery.countdown.min.js"></script>

<script type="text/javascript">

var seckill = {

	    //封装秒杀相关ajax的url
	    URL: {
	        now: function () {
	            return '/service/seckill/time/now';
	        },
	        exposer: function (seckillId) {
	            return '/service/seckill/' + seckillId + '/exposer';
	        },
	        execution: function (seckillId,itemId, url) {
	            return '/service/seckill/' + seckillId + '/'+itemId+'/' + url + '/execution';
	        }
	    },  
	    //详情页秒杀逻辑
	  	 detail: {
	        //详情页初始化
	        init: function (params) {
	            //规划我们的交互流程

	            //计时交互
	            var startTime = params['startTime'];
	            var endTime = params['endTime'];
	            var seckillId = params['seckillId'];
	            var itemId = params['itemId'];
	            $.get(seckill.URL.now(), {}, function (result) {
	                if (result && result['success']) {
	                    var nowTime = result['data'];
	                    //时间判断 计时交互
	                    seckill.countDown(seckillId,itemId, nowTime, startTime, endTime);
	                } else {
	                    console.log('result: ' + result);
	                    alert('result: ' + result);
	                }
	            });
	        }
	    },

	    handlerSeckill: function (seckillId,itemId, node) {
	        //获取秒杀地址,控制显示器,执行秒杀
	        node.hide().html('<button class="btn btn-primary btn-lg" id="killBtn">开始秒杀</button>');

	        $.get(seckill.URL.exposer(seckillId), {}, function (result) {
	            //在回调函数种执行交互流程
	            if (result && result['success']) {
	                var exposer = result['data'];
	                if (exposer['exposed']) {
	                    //开启秒杀
	                    //获取秒杀地址
	                    var url = exposer['url'];
	                    var killUrl = seckill.URL.execution(seckillId,itemId, url);
	                    console.log("killUrl: " + killUrl);
	                    //绑定一次点击事件
	                    $('#killBtn').one('click', function () {
	                        //执行秒杀请求
	                        //1.先禁用按钮
	                        $(this).addClass('disabled');//,<-$(this)===('#killBtn')->
	                        //2.发送秒杀请求执行秒杀
	                        $.post(killUrl, {}, function (result) {
	                            if (result && result['success']) {
	                                var killResult = result['data'];
	                                var state = killResult['state'];
	                                var stateInfo = killResult['stateInfo'];
	                                //显示秒杀结果
	                                node.html('<span class="label label-success">' + stateInfo + '</span>');
	                            }
	                        });
	                    });
	                    node.show();
	                } else {
	                    //未开启秒杀(浏览器计时偏差)
	                    var now = exposer['now'];
	                    var start = exposer['start'];
	                    var end = exposer['end'];
	                    seckill.countDown(seckillId, now, start, end);
	                }
	            } else {
	                console.log('result: ' + result);
	            }
	        });

	    },

	    countDown: function (seckillId,itemId, nowTime, startTime, endTime) {
	        console.log(seckillId + '_' + nowTime + '_' + startTime + '_' + endTime);
	        var seckillBox = $('#seckill-box');
	        if (nowTime > endTime) {
	            //秒杀结束
	            seckillBox.html('秒杀结束!');
	        } else if (nowTime < startTime) {
	            //秒杀未开始,计时事件绑定
	            var killTime = new Date(startTime + 1000);//todo 防止时间偏移
	            seckillBox.countdown(killTime, function (event) {
	                //时间格式
	                var format = event.strftime('秒杀倒计时: %D天 %H时 %M分 %S秒 ');
	                seckillBox.html(format);
	            }).on('finish.countdown', function () {
	                //时间完成后回调事件
	                //获取秒杀地址,控制现实逻辑,执行秒杀
	                console.log('______fininsh.countdown');
	                seckill.handlerSeckill(seckillId,itemId, seckillBox);
	            });
	        } else {
	            //秒杀开始
	            seckill.handlerSeckill(seckillId,itemId, seckillBox);
	        }
	    }

	}
$(function () {
    //使用EL表达式传入参数
    seckill.detail.init({
        seckillId:${seckill.seckillId},
        itemId:${seckill.itemId},
        startTime:${seckill.startTime.time},//毫秒
        endTime:${seckill.endTime.time}
    });
})
</script>
</html>