$(document)
		.ready(
				function() {
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
										searchStaff();
									}

									/* $(document).ready(function(){ */
									$.fn.zTree.init($("#treeDemo"), setting,
											zNodes);
									/* }); */

									getAllStaff();
								}
							});

					/* 实现获得所有员工信息 */
					function getAllStaff() {
						$
								.ajax({
									type : "post",
									dataType : "json",
									url : "getAllStaff",
									data : null,
									success : function(result) {
										/* 清空表格 */
										$("#dap_table  tr:not(:first)")
												.html("");
										/* 在表格中添加数据 */
										for (var i = 0; i < result.length; i++) {
											var a = i + 1;
											$("#dap_table")
													.append(
															"<tr> <td>"
																	+ a
																	+ "</td><td> "
																	+ result[i].staffName
																	+ " </td><td> "
																	+ result[i].staffId
																	+ " </td><td> "
																	+ result[i].sex
																	+ " </td><td> "
																	+ result[i].birthday
																	+ " </td><td> "
																	+ result[i].unitName
																	+ " </td><td> "
																	+ result[i].job
																	+ " </td><td> "
																	+ "<input type='radio' value ='"
																	+ result[i].staffId
																	+ "' name='saveStaffId'>"
																	+ " </td></tr>");
										}
									},
									error : function(result) {
										alert("失败了，你猜为什么");
									}

								});
					}

					/* 实现查询员工并添加到表格中 */
					function searchStaff() {
						$
								.ajax({
									type : "post",
									dataType : "json",
									url : "SearchStaff",
									data :{
										unitId : $("#hidden_UnitId").val(),
									},
									success : function(result) {
										
										/* 清空表格 */
										$("#dap_table  tr:not(:first)")
												.html("");
										/* 在表格中添加数据 */
										for (var i = 0; i < result.length;i++) {
											var a = i + 1;
											$("#dap_table")
													.append(
															"<tr> <td>"
																	+ a
																	+ "</td><td> "
																	+ result[i].staffName
																	+ " </td><td> "
																	+ result[i].staffId
																	+ " </td><td> "
																	+ result[i].sex
																	+ " </td><td> "
																	+ result[i].birthday
																	+ " </td><td> "
																	+ result[i].unitName
																	+ " </td><td> "
																	+ result[i].job
																	+ " </td><td> "
																	+ "<input type='radio' value ='"
																	+ result[i].staffId
																	+ "' name='saveStaffId'>"
																	+ " </td></tr>");
										}
									},
									error : function(result) {
										alert("失败了，你猜为什么");
									}

								});
					}

					/* 实现员工的删除 */
					$("#delete").click(
							function() {
								/* alert($("input[name='saveStaffId']:checked").val()); */
								$.ajax({
									type : "post",
									dataType : "json",
									url : "DeleteStaff",
									data : {
										/*unitId : $("#hidden_UnitId").val(),*/
										staffId : $("input[name='saveStaffId']:checked").val(),
									},
									success : function(deleteResult) {
										alert("删除成功");
										$("input[name='saveStaffId']:checked")
												.parent().parent().remove();
										doReload();
									},
								});
							});

					/* 添加按钮的监听时间 */
					$('#dapartment_add').click(function() {
						/* 修改上级部门的值 */
						var a = document.getElementById("dap_add_name");
						a.innerHTML = $('#hidden_UnitName').val();
						var b = document.getElementById("dap_add_id");
						b.innerHTML = $('#hidden_UnitId').val();
					});

					/* 实现保存员工的js代码 */
					$('#addStaff')
							.click(
									function() {
										var a = document
												.getElementById("hidden_UnitId").value;
										if (a == "" || a == "00") {
											alert("部門ID為空或為根節點，不能進行保存操作");
										} else {

											
													$.ajax({
														type : "post",
														dataType : "json",
														url : "AddStaff",
														data : {
															staffName : $(
																	'#staffName')
																	.val(),
															cardId : $(
																	'#cardId')
																	.val(),
															birthday : $(
																	'#birthday')
																	.val(),
															birthPlace : $(
																	'select#birthPlace')
																	.find(
																			'option:selected')
																	.text(),
															job : $(
																	'select#job')
																	.find(
																			'option:selected')
																	.text(),
															jobTitle : $(
																	'#jobTitle')
																	.val(),
															unitId : document
																	.getElementById("hidden_UnitId").value,
															telephone : $(
																	'#telephone')
																	.val(),
															joinTime : $(
																	'#joinTime')
																	.val(),

														},
														success : function(
																addResult) {
															alert("保存成功");
															$(
															"input[type=reset]")
															.trigger(
																	"click");
															$(".modal").modal(
															"hide");

															$("#dap_table")
																	.append(
																			"<tr> <td>"
																					+ "新添加"
																					+ "</td><td> "
																					+ addResult.staffName
																					+ " </td><td> "
																					+ addResult.staffId
																					+ " </td><td> "
																					+ addResult.sex
																					+ " </td><td> "
																					+ addResult.birthday
																					+ " </td><td> "
																					+ addResult.unitName
																					+ " </td><td> "
																					+ addResult.job
																					+ " </td><td> "
																					+ "<input type='radio' value ='"
																					+ addResult.staffId
																					+ "' name='saveStaffId'>"
																					+ " </td></tr>");
															alert("dawoel")
														
														},
														error : function(
																addResult) {
															alert("保存失败，我也想知道为什么 ");
															$(
															"input[type=reset]")
															.trigger(
																	"click");
														},
													});

										}
										;

									});

					$("#unmodify")
							.click(
									function() {
										var a = $(
												"input[name='saveStaffId']:checked")
												.parent().siblings("td:eq(1)")
												.text();
										var b = $(
												"input[name='saveStaffId']:checked")
												.parent().siblings("td:eq(2)")
												.text();
										var c = $(
												"input[name='saveStaffId']:checked")
												.parent().siblings("td:eq(3)")
												.text();
										var d = $(
												"input[name='saveStaffId']:checked")
												.parent().siblings("td:eq(4)")
												.text();
										var e = $(
												"input[name='saveStaffId']:checked")
												.parent().siblings("td:eq(5)")
												.text();
										var f = $(
												"input[name='saveStaffId']:checked")
												.parent().siblings("td:eq(6)")
												.text();
										
									
										
										$("#staffId").html(b);
									
										document.getElementById("staffName2").value=a;
										document.getElementById("birthday2").value=d;
										document.getElementById("unitName2").value=e;
										document.getElementById("job2").value=f;
									});

					
					
					$("#modifySave").click(function() {
						$.ajax({
							type : "post",
							dataType : "json",
							url : "UpdateStaff",
							data : {
								staffId : $("#staffId").html(),
								staffName : $("#staffName2").val(),
								birthday : $("#birthday2").val(),
								unitName : $("#unitName2").val(),
								job : $("#job2").val(),
							},
							success : function(result) {
								alert("修改成功");
								$("input[type=reset]").trigger("click");
								$(".modal").modal(
								"hide");

							},
						});

					});

				});