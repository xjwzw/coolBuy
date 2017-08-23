<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<%@include file="../../../common.jsp" %>
<title>分类添加</title>
</head>
<body>
<div class="page-container">
	<form action="cat-add" method="post" class="form form-horizontal" id="form-itemcat-add">
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">
				<span class="c-red">*</span>
				分类名称：</label>
			<div class="formControls col-xs-6 col-sm-6">
				<input type="text" class="input-text" value="" placeholder="" name="name">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">分类级别：</label>
			<div class="formControls col-xs-2 col-sm-2">
				<select name="catLevel" class="input-text">
					<option value="0">--请选择--</option>
					<option value="1">一级菜单</option>
					<option value="2">二级菜单</option>
					<option value="3">三级菜单</option>
				</select>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">父分类：</label>
			<div class="formControls col-xs-2 col-sm-2">
				<select name="parentId" class="input-text">
					
				</select>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">
				排序号：</label>
			<div class="formControls col-xs-2 col-sm-2">
				<input type="text" class="input-text" value="" placeholder="" name="sortOrder">
			</div>
		</div>
		<div class="row cl">
			<div class="col-9 col-offset-2">
				<input id="submit" class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
			</div>
		</div>
	</form>
</div>


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
			form.submit();
			//$(form).ajaxSubmit();
			//var index = parent.layer.getFrameIndex(window.name);
			//parent.$('.btn-refresh').click();
			//parent.layer.close(index);
		}
	});
});



</script>
</body>
</html>