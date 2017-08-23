<%@ page language="java" pageEncoding="UTF-8"%>
<div class="BHeader">
	<div class="yNavIndex">
		<ul class="BHeaderl">
			<li style="display: none;"><a href="#" style="float: left;">嘻哈杂货铺</a>
				<a href="#" style="float: left;">退出</a></li>

			<!-- 如果用户没有登陆, 提示登陆或注册 -->
			<c:if test="${ (empty sessionScope) || empty sessionScope.user }">
				<li><a href="${app }/user/login.html" style="color: #ea4949;">请登录</a></li>
				<li class="headerul">|</li>
				<li><a href="${app }/user/register.html">免费注册</a></li>
			</c:if>

			<!-- 如果用户已经登陆, 提示欢迎xxx回来 -->
			<c:if test="${ !((empty sessionScope) || empty sessionScope.user)}">
					欢迎 ${ sessionScope.user.username } 回来	&nbsp;&nbsp;|&nbsp;&nbsp; 
					<a href="user/logout.html">退出</a>&nbsp;&nbsp;|&nbsp;&nbsp;
				</c:if>

			<li class="headerul">|</li>
			<li><a href="${app }/order/show.html">我的订单</a></li>
			<li class="headerul">|</li>
			<li><a href="${app }/cart/show.html">我的购物车</a></li>
			<li class="headerul">|</li>
			<li id="pc-nav" class="menu"><a href="my-user.html" class="tit">我的商城</a>
				<div class="subnav">
					<a href="my-d.html">我的订单</a> <a href="my-s.html">我的收藏</a> <a
						href="my-user.html">账户安全</a> <a href="my-add.html">地址管理</a> <a
						href="my-p.html">我要评价</a>
				</div></li>
			<li class="headerul">|</li>
			<li id="pc-nav1" class="menu"><a href="#" class="tit M-iphone">手机悦商城</a>
				<div class="subnav">
					<a href="#"><img src="theme/icon/ewm.png" width="115"
						height="115" title="扫一扫，有惊喜！"></a>
				</div></li>
		</ul>
	</div>
</div>