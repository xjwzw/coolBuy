<%@ page language="java" pageEncoding="UTF-8"%>
<!--- header begin-->
<header id="pc-header">
	<%@include file="title.jsp" %>
    <div class="container clearfix">
        <div class="header-logo fl"><h1><a href="#"><img src="theme/icon/logo.png"></a> </h1></div>
        <div class="head-form fl">
            <form class="clearfix">
                <input type="text" class="search-text" accesskey="" id="key" autocomplete="off"  placeholder="手机模型">
                <button class="button" onClick="search('key');return false;">搜索</button>
            </form>
            <div class="words-text clearfix">
                <a href="#" class="red">1元秒爆</a>
                <a href="#">低至五折</a>
                <a href="#">农用物资</a>
                <a href="#">买一赠一</a>
                <a href="#">佳能相机</a>
                <a href="#">稻香村月饼</a>
                <a href="#">服装城</a>
            </div>
        </div>
        <div class="header-cart fr"><a href="#"><img src="theme/icon/car.png"></a> <i class="head-amount">99</i></div>
        <div class="head-mountain"></div>
    </div>
    <div class="yHeader">
        <div class="yNavIndex">
            <div class="pullDown">
                <h2 class="pullDownTitle">全部商品分类</h2>
            </div>
            <ul class="yMenuIndex">
                <li><a href="${app }/index.html" target="_blank">首页</a></li>
                <li><a href="${app }/seckill/list.html" target="">秒杀</a></li>
                <li><a href="${app }/redpacket.html" target="_blank">优惠券</a></li>
                <li><a href="" target="_blank">拍卖</a></li>
                <li><a href="" target="_blank">推荐</a></li>
                <li><a href="" target="_blank">最新产品</a></li>
            </ul>
        </div>
    </div>
</header>
<!-- header End -->