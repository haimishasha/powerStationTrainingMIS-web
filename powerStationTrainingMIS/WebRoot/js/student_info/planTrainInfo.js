	$(document).ready(function () {
		/* 点击未安排跳转到安排页面 */
		$('.unManage').click(function () {
			var isFinish = $('#isFinish').val();
			if (isFinish == "未培训"){
				var trainItemId = $(this).siblings("td:eq(0)").attr("id");
				window.location.href="toManageStudent?trainItemId="+trainItemId+"";
			} else {
				
				/* 通过itemId查询所有的学员  */
				$.ajax({
					type : "post",
					dataType : "json",
					url : "searchStudent.action",
					data : {
						itemId : $(this).siblings("td:eq(0)").attr("id")
					},
					success : function(result){
						/* 清空表格 */
						$("#showStudent  tr:not(:first)")
								.html("");
						/* 在表格中添加数据 */
						for (var i = 0; i < result.length; i++) {
							$("#showStudent")
							.append(
									"<tr> <td class='td_mark'>"
											+ result[i].staffId
											+ " </td><td> "
											+ result[i].staffName
											+ " </td><td class='td_mark'> "
											+ result[i].unitName
											+ " </td><td> "
											+ "副班长"
											+ " </td><td> "
											+ "2016.6"
											+ " </td><td> "
											+ result[i].job
											+ " </td></tr>");
						}
					}
				})
			
					

			}
			
		});
		
	})
