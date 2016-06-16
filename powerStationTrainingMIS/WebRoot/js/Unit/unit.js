$(document).ready(
			function() {
				/* 这是在页面添加树状结构的js代码 */
			$.ajax({
				type : "post",
				target : "#treeDemo",
				dataType : "json",
				url : "SearchTreeAction",
				success : function(treeList2) {
					var treeList3 = eval("(" + treeList2 + ")");
					/* alert(treeList3); */
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
					function onClick(event, treeId, treeNode, clickFlag) {
						var id = treeNode.unitId;
						var name = treeNode.unitName;
						document.getElementById("bt1").value = id;
						document.getElementById("bt2").value = name;
						searchUnit();
					}

					/* $(document).ready(function(){ */
					$.fn.zTree.init($("#treeDemo"), setting, zNodes);
					/* }); */

				}
			});
			function doReload() {
				var zTree = $.fn.zTree.getZTreeObj("treeDemo");
				zTree.reAsyncChildNodes(null, "refresh");
			}

			/* 实现查询部门并添加到表格中 */
			function searchUnit() {
				$.ajax({
					type : "post",
					dataType : "json",
					url : "SearchUnit",
					data : {
						up_Unit_Id : $("#bt1").val(),
					},
					success : function(result) {
						var unitList = eval("(" + result + ")");

						/* 清空表格 */
						$("#unitTable  tr:not(:first)").html("");

						/* 在表格中添加数据 */
						for (var i = 0; i < unitList.length; i++) {
							var a = i + 1;
							$("#unitTable").append(
									"<tr> <td>" + a + "</td><td> "
											+ unitList[i].unitName
											+ " </td><td> "
											+ unitList[i].unitId
											+ " </td><td> "
											+ unitList[i].header
											+ " </td><td> "
											+ unitList[i].telephone
											+ " </td><td> "
											+ unitList[i].remark
											+ " </td></tr>");
						}
						;
					},
				});
			}

			/* 实现部门的删除 */
			$("#department_delete").click(function() {
				
				var a = $("#bt1").val();
				if(a == "00"){
					alert("根节点不能删除，请重新选择");
				} else {
					$.ajax({
						type : "post",
						dataType : "json",
						url : "DeleteUnitAction",
						data : {
							unit_Id : $("#bt1").val(),
						},
						success : function() {
							alert("删除成功");
							doReload();
						},
					});
				}
			});

			/* 此处是为了识别 按钮事件是 保存 还是修改 */
			var a = true;

			/* 实现点击保存按钮的监听时间 */
			$('#dapartment_add').click(function() {
				a = true;
				/* 修改上级部门的值 */
				var a = document.getElementById("dap_add_name");
				a.innerHTML = $('#bt2').val();
				var b = document.getElementById("dap_add_id");
				b.innerHTML = $('#bt1').val();
			});

			/* 实现点击修改按钮的时候，从数据库查找数据添加到修改界面中 */
			$("#dapartment_change").click(
					function() {
						a = false;
						$('#dapartment_change').attr("name", "saveChange");
						$.ajax({
							type : "post",
							datatype : "json",
							url : "GetUpdateUnit.action",
							data : {
								unitId : $('#bt1').val(),
							},
							success : function(result) {
								$('#dapartment_id').val(result.unitId), $(
										'#dapartment_name')
										.val(result.unitName), $(
										'#dapartment_phone').val(
										result.telephone), $('#dapartment_jc')
										.val(result.header), $(
										'#dapartment_remark')
										.val(result.remark)
							}
						});
					});

			/* 实现保存部门 ，修改部门的js代码 */
			$('#dapartm_add_save').click(function() {
				
				/* 获得上级部门的值 */
				var b = $('#bt1').val();

				if (b.length == 0){
					alert("请选择上级部门");
					$("input[type=reset]").trigger("click");
					$(".modal").modal("hide");
				} else {
					if (a) {
						/*alert("我是保存");*/
						$.ajax({
							type : "post",
							dataType : "json",
							url : "AddUnitAction",
							data : {
								unitId : $('#dapartment_id').val(),
								upUnitId : $('#bt1').val(),
								unitName : $('#dapartment_name').val(),
								telephone : $('#dapartment_phone').val(),
								header : $('#dapartment_jc').val(),
								remark : $('#dapartment_remark').val(),
							},
							success : function(addResult) {
								alert("保存成功");
								$("input[type=reset]").trigger("click");
								$(".modal").modal("hide");
							},
							error : function(addResult) {
								alert("保存失败，部门编号 ");
								$("input[type=reset]").trigger("click");
							}
						});
					} else {
						/*alert("我是修改");*/
						$.ajax({
							type : "post",
							dataType : "json",
							url : "UpdateUnitAction.action",
							data : {
								unitId : $('#dapartment_id').val(),
								unitName : $('#dapartment_name').val(),
								telephone : $('#dapartment_phone').val(),
								header : $('#dapartment_jc').val(),
								remark : $('#dapartment_remark').val()
							},
							success : function(updateResult) {
								alert("修改成功");
								$("input[type=reset]").trigger("click");
								$(".modal").modal("hide");
							}
						});
					}
				}
				

			});
		})