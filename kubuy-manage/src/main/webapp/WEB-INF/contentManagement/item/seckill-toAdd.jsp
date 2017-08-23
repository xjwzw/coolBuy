<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<%@include file="../../common.jsp" %>
<title>秒杀添加</title>
</head>
<body>
<div class="page-container">
	<form action="#" method="post" class="form form-horizontal" id="form-itemcat-add">
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">
				商品id：</label>
			<div class="formControls col-xs-2 col-sm-2">
				<input name="itemId" type="text" class="input-text" value="${item.id }" placeholder="" readonly="readonly"/>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">
				<span class="c-red">*</span>
				秒杀标题：</label>
			<div class="formControls col-xs-6 col-sm-6">
				<input type="text" class="input-text" value="" placeholder="" name="title"/>
			</div>
		</div>
		<div class="row cl"> 
		
			<label class="form-label col-xs-4 col-sm-2">
				<span class="c-red">*</span>
				日期：</label>
			<div class="formControls col-xs-6 col-sm-6">
				<input name="date" type="date" id="datemin" class="input-text Wdate" style="width:180px;"/>
			</div>
		
			
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">分类级别：</label>
			<div class="formControls col-xs-4 col-sm-4">
				<select name="time" class="input-text">
					<option value="0">--请选择--</option>
					<option value="0">00:00-02:00</option>
					<option value="1">02:00-04:00</option>
					<option value="2">04:00-06:00</option>
					<option value="3">06:00-08:00</option>
					<option value="4">08:00-10:00</option>
					<option value="5">10:00-12:00</option>
					<option value="6">12:00-14:00</option>
					<option value="7">14:00-16:00</option>
					<option value="8">16:00-18:00</option>
					<option value="9">18:00-20:00</option>
					<option value="10">20:00-22:00</option>
					<option value="11">22:00-00:00</option>
				</select>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">
				秒杀价格：</label>
			<div class="formControls col-xs-2 col-sm-2">
				<input name="cost" type="text" class="input-text" value="" placeholder=""/>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">
				原价格：</label>
			<div class="formControls col-xs-2 col-sm-2">
				<input type="text" class="input-text" value="${item.price/100 }" placeholder=""  readonly="readonly"/>
				<input name="price" type="hidden" class="input-text" value="${item.price }" placeholder="" readonly="readonly"/>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">
				数量：</label>
			<div class="formControls col-xs-2 col-sm-2">
				<input name="num" type="text" class="input-text" value="" placeholder="" name="sortOrder"/>
			</div>
		</div>
		<div class="row cl">
			<div class="col-9 col-offset-2">
				<input id="submit" class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
			</div>
		</div>
	</form>
</div>

<script type="text/javascript" src="${app }/staticfile/lib/My97DatePicker/4.8/WdatePicker.js"></script> 
<script type="text/javascript" src="${app }/staticfile/lib/datatables/1.10.0/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="${app }/staticfile/lib/laypage/1.2/laypage.js"></script>
<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="${app }/staticfile/lib/jquery.validation/1.14.0/jquery.validate.js"></script>
<script type="text/javascript" src="${app }/staticfile/lib/jquery.validation/1.14.0/validate-methods.js"></script>
<script type="text/javascript" src="${app }/staticfile/lib/jquery.validation/1.14.0/messages_zh.js"></script>
<script type="text/javascript">
$(function(){
	var data;
	$("select[name='catLevel']").change(function(){
		$("select[name='parentId']").html("");
		var catLevel=$(this).val()-1;
		$.post("cat-query",{"catLevel":catLevel},function(result){
			for(var o in result){  
				$("select[name='parentId']").append("<option value='"+result[o].id+"'>"+result[o].name+"</option>");
		    }  
		});
	});
	/* 表单检验 */
	$("#form-itemcat-add").validate({
		rules:{
			name:{
				required:true,
				minlength:2,
				maxlength:16
			},
			sortOrder:{
				required:true,
				digits:true
			}
		},
		onkeyup:false,
		focusCleanup:true,
		success:"valid",
		submitHandler:function(form){
			form.action="${app}/contentManagement/seckill/add";
			window.close();
			form.submit();
			
			
		}
	});
});



</script>

</body>
</html>