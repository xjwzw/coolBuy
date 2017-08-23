<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!Doctype html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>抢红包特效</title>
	<script type="text/javascript" src="/theme/js/jquery.js"></script>
	<script type="text/javascript">
		$(function(){
			$('#btn').click(function(){
				$.get("http://www.kubuy.com/service/redpacket/get", function(result){
					$('#money').attr("value", result.data);
				});
			});
		})
	</script>
	<style type="text/css">
		div {
			height: 360px;
			width: 480px;
			background-image: url(./theme/img/red.gif);
			background-repeat: no-repeat;
			margin: 200px auto;
			text-align: center;
		}
		#btn {
			height:40px;
			width:100px;
			font-size: 20px;
			font-weight: bold;
			font-family: 'YouYuan';
			background-color:#FC670F;
			margin: 280px 10px;
			border: 0;
		}
		#money {
			height:40px;
			width:250px;
			color: #D00;
			font-size: 20px;
			font-weight: bold;
			font-family: 'YouYuan';
			background-color:#FFF;
			border: 0;
		}
	</style>
</head>
<body>
	<div>
		<input id="money" type="text" value="一大波红包雨在赶来啦！" />
		<input id="btn" type="button" value="抢红包" />
	</div>
</body>>