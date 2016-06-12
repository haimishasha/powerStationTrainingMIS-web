/**************
 * student_manage --- department manage
***************/

$(function(){
	//department manage add form check
	$("#dapartment_add_form").validate({			
		debug:true,
		rules:{
				dapartment_name:{
					required:true,
					minlength:2,
					maxlength:10
				}
		},
		messages:{
			dapartment_name:{
					required:"必填选项",
					minlength:"部门名称最小为2",
					maxlength:"部门名称最大为10"
			}
		}

	})
	//department manage change add something date to add modal

})

/************************
 * student_manage --- student info manage --show
************************/
$(function(){
	//check form
	$("#myform").validate({
		rules:{
			staffName:{
				required:true,
				minlength:2,
				maxlength:10
			},
			stuid:{
				required:true,
				minlength:2,
				maxlength:10
			},
			cardId:{
				required:true,
				minlength:5,
				maxlength:18
			},
			birthday:{
			  required:true,
			  data:true
			},
			jobTitle:{
				required:true
			},
			telephone:{
				required:true,
				minlength:11,
				maxlength:11,
				number:true
			},
			joinTime:{
				data:true,
				required:true
			}						
		},			
        messages:{	                    	
            staffName:{
                required: '请输入工号',
                minlength: '用户名不能小于2个字符',
                maxlength: '用户名不能超过10个字符'
   			},
    		stuid:{
                required: '请输入工号',
                minlength: '密码不能小于2个字符',
                maxlength: '密码不能超过16个字符'
            },
            cardId:{
            	required: '*身份证格式不正确',
                minlength: '密码不能小于2个字符',
                maxlength: '密码不能超过16个字符'
            },
            birthday:{
            	required:'*必填'
            },
            jobTitle:{
            	required:'*必填'

            },
            telephone:{
            	required:'手机号码格式错误',
            	minlength:'手机号码格式错误',
            	maxlength:'手机号码格式错误'
            },
            joinTime:{
            	required:'*必填'
            }

        },
        errorPlacement:function(error,element){　　//第一个参数是错误的提示文字，第二个参数是当前输入框
               error.appendTo(element.closest("tr"));　　//用的是jQuery，这里设置的是，错误提示文本显示在当前文本框的兄弟span中
        }
   })
})
