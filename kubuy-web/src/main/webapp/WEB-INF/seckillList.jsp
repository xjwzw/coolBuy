<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="app" value="${pageContext.request.contextPath}"/>
<!doctype html>
<html>
 <head>
	<meta charset="UTF-8">
	<meta name="Generator" content="EditPlus®">
	<meta name="Author" content="">
	<meta name="Keywords" content="">
	<meta name="Description" content="">
	<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE"> 
	<meta name="renderer" content="webkit">
	<title>酷购商城</title>
    <link rel="shortcut icon" type="image/x-icon" href="${app }/theme/icon/favicon.ico">
	<link rel="stylesheet" type="text/css" href="${app }/theme/css/base.css">
	<link rel="stylesheet" type="text/css" href="${app }/theme/css/home.css">
	<script type="text/javascript" src="${app }/theme/js/jquery.js"></script>
    <script type="text/javascript">
    	var time=${time};
         var intDiff = parseInt(time)/1000;//倒计时总秒数量

         function timer(intDiff){
             window.setInterval(function(){
                 var day=0,
                         hour=0,
                         minute=0,
                         second=0;//时间默认值
                 if(intDiff > 0){
                     day = Math.floor(intDiff / (60 * 60 * 24));
                     hour = Math.floor(intDiff / (60 * 60)) - (day * 24);
                     minute = Math.floor(intDiff / 60) - (day * 24 * 60) - (hour * 60);
                     second = Math.floor(intDiff) - (day * 24 * 60 * 60) - (hour * 60 * 60) - (minute * 60);
                 }
                 if (minute <= 9) minute = '0' + minute;
                 if (second <= 9) second = '0' + second;

                 $('#hour_show').html('<s id="h"></s>'+hour+'');
                 $('#minute_show').html('<s></s>'+minute+'');
                 $('#second_show').html('<s></s>'+second+'');
                 intDiff--;
             }, 1000);
         }

         $(function(){
             timer(intDiff);
         });

         (function(a){
             a.fn.hoverClass=function(b){
                 var a=this;
                 a.each(function(c){
                     a.eq(c).hover(function(){
                         $(this).addClass(b)
                     },function(){
                         $(this).removeClass(b)
                     })
                 });
                 return a
             };
         })(jQuery);

         $(function(){
             $("#pc-nav").hoverClass("current");
         });
     </script>

 </head>
 <body>

<%@include file="head.jsp" %>
<div class="containers"><div class="pc-nav-item"><a href="#" class="pc-title">首页</a> > <a href="#">限时抢购</a> > <a href="#">即将开始</a> </div></div>
<div class="containers"><div class="pc-add-item"><img src="${app }/theme/img/ad/hot2.jpg"></div></div>
<div class="pc-buying clearfix">
    <div class="time-list time-list-w fl">
        <div class="time-title time-clear">
            <h2>距离本场结束还剩：</h2>
            <div class="time-item fl clearfix">
                <strong id="hour_show">00</strong>
                <strong class="pc-clear-sr">:</strong>
                <strong id="minute_show">00</strong>
                <strong class="pc-clear-sr">:</strong>
                <strong id="second_show">00</strong>
            </div><!--倒计时模块-->
            <a href="javascript:;" class="reds fr">即将开始的抢购></a>
        </div>
        <div class="time-border time-border-h time-border-list clearfix">
            <ul>
            	<c:forEach items="${seckillList }" var="seckill">
                <li>
                    <a href="${seckill.seckillId }"> <img src=""></a>
                    <p class="head-name"><a href="#">${seckill.title }</a> </p>
                    <p><span class="price">￥${seckill.cost}</span><span class="discount">￥${seckill.price/100 }</span></p>
                    <div class="pc-emption">
                            <a href="${app}/item/detail/${seckill.itemId }.html">查看详情</a>
                        </div>
                        <div class="pc-emption">
                            <a href="${app }/seckill/${seckill.seckillId }/detail.html" target="_blank">立即抢购</a>
                        </div>
                </li>
               </c:forEach>

            </ul>
        </div>
    </div>
</div>
	<%@include file="foot.jsp" %>
</body>
</html>