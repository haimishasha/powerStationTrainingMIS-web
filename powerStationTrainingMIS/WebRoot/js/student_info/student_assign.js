$(function(){
	$("#student_save_table").scrollY = 0;
	$("#student_save_choice").click(function(){
		//选出所有被选中的复选框 
		//父级，同级的td去隐藏样式
		//父级tr 添加到下面
		$('#student_resave_table [name=student_check]:checkbox:checked').parent().siblings().removeClass('row_hide').parent().appendTo("#student_save_table tbody");
	})
	
	/* 在下面直接使用这段代码，所以注释掉 */
	/*$("#student_delect_choice").click(function(){
		$('#student_save_table [name=student_check]:checkbox:checked').parent().siblings(".td_mark").addClass('row_hide').parent().appendTo("#student_resave_table tbody");
	})*/
	$("#save_to_db").click(function(){
		var $length = $("#student_save_table tbody > tr").length;
		var info = "<strong>" + $length + "</strong>";
		$(".content_bottom_title strong").replaceWith(info);
	})
})

/*-----------------------------------丁-----------------------------------*/
	$(document).ready(function () {
		
		/* 这是一个为了映射准备的 */
		var num = 0;
		
		/* 在页面添加zTree */
		$
		.ajax({
			type : "post",
			dataType : "json",
			url : "SearchTreeAction",
			success : function(treeList2) {
				var treeList3 = eval("(" + treeList2 + ")");
				var setting = {
					data : {
						simpleData : {
							enable : true,
							idKey : "unitId",
							pIdKey : "upUnitId",
							rootPId : "0",
						},
						key : {
							name : "unitName",
						}
					},
					callback : {
						onClick : onClick
					}
				};
				var zNodes = treeList3;

				/*
				 * 添加 树节点的 点击事件；
				 */
				var log, className = "dark";
				function onClick(event, treeId, treeNode,
						clickFlag) {
					var id = treeNode.unitId;
					var name = treeNode.unitName;

					/* 这是储存id和那么的两个hidden框 */
					document
							.getElementById("hidden_UnitId").value = id;
					document
							.getElementById("hidden_UnitName").value = name;
					$('#unitName').html(name);
					
					/* 调用查询员工的js */
					searchStaff();
				}

				/* 在页面显示树 */
				$.fn.zTree.init($("#treeDemo"), setting,
						zNodes);
				var treeObj = $.fn.zTree.getZTreeObj("treeDemo");
				treeObj.expandAll(true); 
				searchStudent()

			}
		});
		
		/* 通过部门查询员工 */
		function searchStaff() {
			$
					.ajax({
						type : "post",
						dataType : "json",
						url : "SearchStaff",
						data : {
							unitId : $("#hidden_UnitId").val(),
						},
						success : function(result) {

							/* 清空表格 */
							$("#student_resave_table  tr:not(:first)")
									.html("");
							
							/* 在表格中添加数据 */
							for (var i = 0; i < result.length; i++) {
								$("#student_resave_table")
										.append(
												"<tr> <td class='row_hide td_mark'>"
														+ result[i].staffId
														+ " </td><td> "
														+ result[i].staffName
														+ " </td><td class='row_hide td_mark'> "
														+ result[i].unitName
														+ " </td><td> "
														+ "副班长"
														+ " </td><td> "
														+ "2016.6"
														+ " </td><td> "
														+ result[i].job
														+ " </td><td> "
														+ "<input type='checkbox' value='" 
														+ 
														+ result[i].staffId
														+ "' name='student_check' "
														+ " id='staff["+num+"].staffId'>"
														+ " </td></tr>");
									num++;
							}
							/* 为了获取值更方便 
							num = num + result.length;*/
						},
						error : function(result) {
							alert("失败了，你猜为什么");
						}

					});
		}
		
		/* 通过itemId 查询相应的学员 */
		function searchStudent(){
			$.ajax({
				type : "post",
				dataType : "json",
				url : "searchStudent.action",
				data : {
					itemId : $("#hidden_PlanItemId").val(),
				},
				success : function(result){
					/* 清空表格 */
					$("#student_save_table  tr:not(:first)")
							.html("");
					/* 在表格中添加数据 */
					for (var i = 0; i < result.length; i++) {
						$("#student_save_table")
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
										+ " </td><td> "
										+ "<input type='checkbox' value='" 
										+ 
										+ result[i].staffId
										+ "' name='student_check' "
										+ " id='staff["+num+"].staffId'>"
										+ " </td></tr>");
						num++;
					}
				}
			})
		}
		/* 实现保存被安排的学员 */
		$("#save_to_db").click(function(){
			$("#submitButton").trigger("click");
		})
		
		/* 实现删除已安排的学员 */
		$('#student_delect_choice').click(function () {
			alert("我是删除学员");
			
			var $choosed = $('#student_save_table [name=student_check]:checkbox:checked');
			
                 var dropIds = new Array();  
                 $choosed.each(function(){  
                     dropIds.push($(this).val());  
                 });  
			
              $.ajax({
				dataType : "json",
				url : "deleteStudent.action",
				method : "post",
				traditional :true,
				data : {
					'trainItemId' : $('#hidden_PlanItemId').val(),
					'staffIds' : dropIds
				}, 
				success : function(result){
					$('#student_save_table [name=student_check]:checkbox:checked').parent().siblings(".td_mark").addClass('row_hide').parent().appendTo("#student_resave_table tbody");
					/* 已安排学员人数 的修改 未实现 */
				},
				error : function(){
					alert("删除失败，请重新删除");
					}
			})
			
		})
		
	})
/*-----------------------------------丁-----------------------------------*/