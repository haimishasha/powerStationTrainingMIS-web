$(function(){
	$("#student_save_table").scrollY = 0;
	$("#student_save_choice").click(function(){
		//选出所有被选中的复选框 
		//父级，同级的td去隐藏样式
		//父级tr 添加到下面
		$('#student_resave_table [name=student_check]:checkbox:checked').parent().siblings().removeClass('row_hide').parent().appendTo("#student_save_table tbody");
	})
	$("#student_delect_choice").click(function(){
		$('#student_save_table [name=student_check]:checkbox:checked').parent().siblings(".td_mark").addClass('row_hide').parent().appendTo("#student_resave_table tbody");
	})
	
	$("#save_to_db").click(function(){
		var $length = $("#student_save_table tbody > tr").length;
		var info = "<strong>" + $length + "</strong>";
		$(".content_bottom_title strong").replaceWith(info);
	})
})
