<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">
<title>部门管理</title>
<script type="text/javascript"
	src="js/jquery-2.2.2.min.js"></script>
<script type="text/javascript"
	src="js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="js/jquery.ztree.core-3.5.js"></script>
<link rel="stylesheet" type="text/css" media="screen"
	href="css/zTreeStyle/zTreeStyle.css" />
<link rel="stylesheet"
	href="css/bootstrap.min.css" />
<link rel="stylesheet"
	href="css/main2.css" />


</head>

<!-- 添加树状结构的js代码 -->
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						$
								.ajax({
									type : "post",
									target : "#treeDemo",
									dataType : "json",
									url : "SearchTreeAction",
									success : function(treeList2) {
										var treeList3 = eval("(" + treeList2
												+ ")");
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
										function onClick(event, treeId,
												treeNode, clickFlag) {
											var id = treeNode.unitId;
											var name = treeNode.unitName;
											document.getElementById("bt1").value = id;
											document.getElementById("bt2").value = name;
											searchUnit();
										}

										/* $(document).ready(function(){ */
										$.fn.zTree.init($("#treeDemo"),
												setting, zNodes);
										/* }); */

									}
								});
						function doReload() {
							alert("lalalalal");
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
						});

					});
</script>

<script type="text/javascript">
	$(document).ready(function() {

		/* 添加按钮的监听时间 */
		$('#dapartment_add').click(function() {
			/* 修改上级部门的值 */
			var a = document.getElementById("dap_add_name");
			a.innerHTML = $('#bt2').val();
			var b = document.getElementById("dap_add_id");
			b.innerHTML = $('#bt1').val();
		});

		/* 实现保存部门的js代码 */
		$('#dapartm_add_save').click(function() {
			/* var $dap_id = $('#dapartment_id').val();
			alert($dap_id+"编号添加");
			var $html = "<div class='panel-body'></div>";
			$($html).appendTo("#collapseOne").html($dap_id); */// 将boostrap的panel——body元素添加到 指定的折叠框 id为当前输入编号的id
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
					$(
					"input[type=reset]")
					.trigger(
							"click");
					$(".modal").modal(
					"hide");
				},
				error : function(addResult) {
					alert("保存失败，部门编号 ");
					$(
					"input[type=reset]")
					.trigger(
							"click");
				}
			});

		});
	});
</script>
<body>
	<jsp:include page="../nav.jsp"/>

	<div class="Mycontent">
		<div class="container">
			<div class="content_title">
				<!--<hr />-->
				<ol class="breadcrumb">
					<li><a href="#">电厂</a></li>
					<li><a href="#">学员管理</a></li>
					<li class="active">部门管理</li>
				</ol>
			</div>

			<form action="" method="post" style="border: 1px solid #EEEEEE;">
				<fieldset style="margin: 20px;">
					<legend>
						<span>查询条件</span>
					</legend>
					班组: <input type="text" name="class_group" /> <span>部门编号: </span><input
						type="text" name="dapartment_id" /> <input type="submit"
						value="查 询" class="fr" id="sele_sub" />
				</fieldset>
			</form>
			<!--select_form end-->

			<div class="dapartment_main">

				<div class="dapartment_left"">
					<fieldset>
						<legend>
							<span>部门</span>
						</legend>

						<!-- 这是添加zTree的div -->
						<div class="panel-group" id="accordion" role="tablist"
							aria-multiselectable="true">
							<ul id="treeDemo" class="ztree"></ul>
						</div>
					</fieldset>
				</div>
				<!--添加 修改 部门信息-->
				<div class="dapartment_right ">
					<div class="btn-group" role="group" aria-label="...">

						<button type="button" class="btn btn-default" id="dapartment_add"
							data-toggle="modal" data-target="#dapartment_add_modal">添
							加</button>
						<button type="button" class="btn btn-default"
							id="dapartment_change" data-toggle="modal"
							data-target="#dapartment_change_modal">修 改</button>
						<input type="hidden" value="" id="bt1"> <input
							type="hidden" value="" id="bt2">
						<button type="button" class="btn btn-default"
							id="department_delete">删 除</button>
						<!--添加，修改弹出框-->
						<!--添加弹出框-->
						<div class="modal fade" id="dapartment_add_modal">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
										<h4 class="modal-title">添加部门信息</h4>
									</div>
									<div class="modal-body" id="divFrame">
										<form action="">
											<div class="table-responsive">
												<table class="table" style="border:1px solid grey">
													<tr>
														<td>上级部门</td>
														<td style="text-align:center disabled"><span
															id="dap_add_name">发电部门一部</span></td>
													</tr>
													<tr>
														<td style="text-align:center disabled">上级部门编号</td>
														<td><span id="dap_add_id">001</span></td>
													</tr>
													<tr>
														<td>部门名称</td>
														<td><input type="text" id="dapartment_name"></td>
													</tr>
													<tr>
														<td>部门编号</td>
														<td><input type="text" id="dapartment_id"></td>
													</tr>
													<tr>
														<td>联系方式</td>
														<td><input type="text" id="dapartment_phone"></td>
													</tr>
													<tr>

														<td>部门简称</td>
														<td><input type="text" id="dapartment_jc"></td>

													</tr>
													<tr>
														<td>备注</td>
														<td><textarea name="" id="dapartment_remark"
																cols="22" rows=" 8" style="resize:none"></textarea></td>
													</tr>
													<input type="reset" style="display:none;" />
												</table>
											</div>
										</form>
									</div>

									<div class="modal-footer">
										<button type="button" class="btn btn-primary"
											id="dapartm_add_save">Save changes</button>
										<button type="button" class="btn btn-default"
											data-dismiss="modal">Close</button>
									</div>
								</div>
								<!-- /.modal-content -->
							</div>
							<!-- /.modal-dialog -->
						</div>
						<!-- /.modal -->

						<!--修改弹出框-->
						<div class="modal fade" id="dapartment_change_modal">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
										<h4 class="modal-title">Modal title</h4>
									</div>
									<div class="modal-body">
										<p>One fine body&hellip;</p>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">Close</button>
										<button type="button" class="btn btn-primary">Save
											changes</button>
									</div>
								</div>
								<!-- /.modal-content -->
							</div>
							<!-- /.modal-dialog -->
						</div>
						<!-- /.modal -->

					</div>
					<div>
						<div class="fl">
							<label class="btn">共 : <span>10条</span>信息
							</label>
						</div>
						<div class="fr">
							<button class="btn btn-default">导 出</button>
							<button class="btn btn-default">打 印</button>
						</div>
						<div class="clearfix"></div>
					</div>
					<from>
					<table class="dap_table" id="unitTable">
						<thead>
							<tr>
								<th>序号</th>
								<th>部门名称</th>
								<th>部门编号</th>
								<th>部门简称</th>
								<th>联系方式</th>
								<th>备注</th>
							</tr>
						</thead>
						<tbody id="tabody">
						</tbody>
					</table>
					</from>

					<nav> 分页?! </nav>
				</div>
			</div>
			<!--dapartment_main end-->


		</div>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>
