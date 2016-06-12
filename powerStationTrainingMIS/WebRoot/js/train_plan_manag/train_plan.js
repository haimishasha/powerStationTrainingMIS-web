/***********************
//培训计划管理 --select -->delect
***********************/
$(function(){
	$("#plan_delect").click(function(){
		$('[name=plan_check]:checkbox:checked').each(function(){
			$(this).parent().parent().remove();
		})
	})
})

/***********************
//培训计划管理 --添加部门
***********************/
//部门培训计划添加 add_plan
$(function(){
	
	$("#add_plan").click(function(){									
	$("#test_tr").clone(true).appendTo("#test_tb");
});
//计划删除
$("#delect_plan").click(function(){
	if($("tbody tr").length>1){
		$("tbody tr:last").remove();
	}
});
//check
//add 表单验证
//这逻辑上有错误 明明就没选择到textarea
$("#plan_add_form :input").blur(function(){  // 为表单元素添加失去焦点事件
	//这个移除样式可能真的很必要！					
	if( $(this).is('[name=aim]')){
		//记得判断为数字
		if( this.value==""){
			$(this).removeClass("addSuccess").addClass("addError");					    
		}else{
			$(this).removeClass("addError").addClass("addSuccess");			
		}
    }
	if( $(this).is('[name=content]')){
		if( this.value==""){
			$(this).removeClass("addSuccess").addClass("addError");					    
		}else{
			$(this).removeClass("addError").addClass("addSuccess");			
		}
    }
	if( $(this).is('[name=times]') ){
		if( this.value==""  || this.value.length > 6 ){
			$(this).removeClass("addSuccess").addClass("addError");					    
		}else{
			$(this).removeClass("addError").addClass("addSuccess");			
		}
    }
	if( $(this).is('[name=teacher]') ){
		if( this.value==""  || this.value.length < 2 || this.value.length > 6 ){
			$(this).removeClass("addSuccess").addClass("addError");					    
		}else{
			$(this).removeClass("addError").addClass("addSuccess");			
		}
    }
}).keyup(function(){  //增加键盘弹起事件
   $(this).triggerHandler("blur");
}).focus(function(){  //获得焦点事件
   $(this).triggerHandler("blur");
});//end blur
//提交时候的验证?怎么写咧   如果输入框不曾获得焦点 则form表单上没有任何的    .error  所以直接执行!!!
$('#save').click(function(){
	//提交的时候强行执行一波失去焦点
	$("#plan_add_form :input").each(function(){
		$(this).trigger('blur');
	})			
	var numError = $('form .addError').length;
	if(numError){
		alert("请填写必填的表单内容")
		return false;
	} 
	alert("保存成功！");
});
	
	
	
});
