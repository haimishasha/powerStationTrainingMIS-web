$(function(){
	$("#load_form").validate({
		rules:{
			username:{
				required:true,
				minlength:6,
				maxlength:16
			},
			password:{
				required:true,
				minlength:6,
				maxlength:16
			}
		},
		messages:{
			username:{
				required:"请输入用户名",
				minlength:"用户名大于6位",
				maxlength:"用户名小于16位"
			},
			password:{
				required:"请输入用户名",
				minlength:"密码大于6位",
				maxlength:"密码小于16位"
			}
		},
		errorPlacement:function(error,element){　　//第一个参数是错误的提示文字，第二个参数是当前输入框
			error.appendTo(element.siblings("span"));　　//用的是jQuery，这里设置的是，错误提示文本显示在当前文本框的兄弟span中
		}
	})
	
})
