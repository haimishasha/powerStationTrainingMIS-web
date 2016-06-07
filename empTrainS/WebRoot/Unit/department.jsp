<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'department.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-2.2.2.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.ztree.core-3.5.js"></script>
<link rel="stylesheet" type="text/css" media="screen"
	href="${pageContext.request.contextPath}/css/zTreeStyle/zTreeStyle.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/main2.css" />


</head>

<!-- 添加树状结构的js代码 -->
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						getTree();
						function getTree() {
							$
									.ajax({
										type : "post",
										target : "#treeDemo",
										dataType : "json",
										url : "${pageContext.request.contextPath}/SearchTreeAction",
										success : function(treeList2) {
											var treeList3 = eval("("
													+ treeList2 + ")");
											/* alert(treeList3); */
											var setting = {
												data : {
													simpleData : {
														enable : true,
														idKey : "unit_Id",
														pIdKey : "up_Unit_Id",
														rootPId : "0",
													},
													key : {
														name : "unit_Name",
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
												var id = treeNode.unit_Id;
												var name = treeNode.unit_Name;
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
						}
						function doReload() {
							alert("-----------异步加载-----------");
							var zTree = $.fn.zTree.getZTreeObj("treeDemo");
							zTree.reAsyncChildNodes(null, "refresh");
							alert("----------异步加载完毕-----------");
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
														+ unitList[i].unit_Name
														+ " </td><td> "
														+ unitList[i].unit_Id
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

						/* 添加按钮的监听时间 */
						$('#dapartment_add').click(function() {
							/* 修改上级部门的值 */
							var a = document.getElementById("dap_add_name");
							a.innerHTML = $('#bt2').val();
							var b = document.getElementById("dap_add_id");
							b.innerHTML = $('#bt1').val();
						});

						/* 实现保存部门的js代码 */
						$('#dapartm_add_save')
								.click(
										function() {
											/* var $dap_id = $('#dapartment_id').val();
											alert($dap_id+"编号添加");
											var $html = "<div class='panel-body'></div>";
											$($html).appendTo("#collapseOne").html($dap_id); */// 将boostrap的panel——body元素添加到 指定的折叠框 id为当前输入编号的id
											var params = {
												unit_Id : $('#dapartment_id')
														.val(),
												up_Unit_Id : $('#bt1').val(),
												unit_Name : $(
														'#dapartment_name')
														.val(),
												telephone : $(
														'#dapartment_phone')
														.val(),
												header : $('#dapartment_jc')
														.val(),
												remark : $('#dapartment_remark')
														.val(),
											};
											$
													.ajax({
														type : "post",
														dataType : "json",
														url : "AddUnitAction",
														data : params,
														success : function(
																addResult) {
															alert("保存成功");
															$(".modal").modal(
																	"hide");
															var treeObj = $.fn.zTree
																	.getZTreeObj("treeDemo");
															var nodes = treeObj
																	.getNodes();
															for (var i = 0; i < nodes.length; i++) {
																treeObj
																		.removeNode(nodes[i]);
															}
															getTree();
														},
														error : function(
																addResult) {
															alert("保存失败，部门编号 ");
														}
													});

										});
					});
</script>
<body>
	<div class="bef_nav">
		<div class="container">

			<div class="bef_nav_right">
				<span style="margin-right: 20px;">欢迎 : 管理员</span> <a href="#">修改密码</a>
				<a href="#">退出系统</a>
			</div>
		</div>
	</div>

	<nav class="nav navbar-inverse">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">LOGO</a>
		</div>

		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">首页</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">培训计划管理<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="ADD.html">添加</a></li>
						<li><a href="#">修改</a></li>
						<li><a href="#">删除</a></li>
						<li><a href="#">查询</a></li>
					</ul></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">培训成绩管理<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">录入</a></li>
						<li><a href="#">修改</a></li>
						<li><a href="#">查询</a></li>
					</ul></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">培训考勤管理<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">查询</a></li>
						<li><a href="#">统计</a></li>
					</ul></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">其他<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">部门管理</a></li>
						<li><a href="#">指纹库管理</a></li>
						<li><a href="#">用户管理</a></li>
					</ul></li>
				<li><a href="#">学员管理</a></li>
			</ul>
		</div>

	</div>
	</nav>

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
							<!--  <tr> 
										<td>1</td>
										<td>发电一部</td>
										<td>001001</td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
									<tr> 
										<td>1</td>
										<td>发电一部</td>
										<td>001001</td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
									<tr> 
										<td>1</td>
										<td>发电一部</td>
										<td>001001</td>
										<td></td>
										<td></td>
										<td></td>
									</tr> -->
						</tbody>
					</table>
					</from>

					<nav> 分页?! </nav>
				</div>
			</div>
			<!--dapartment_main end-->


		</div>
	</div>
	<!--这条线是个隐患 要如何修改呢-->
	<hr style="border:solid 1px; margin-top: -10px; margin-bottom:10px ;" />
	<footer style="text-align: center;margin-bottom: 30px;">
	<p>版权信息</p>
	<p>版权信息一般还有两行</p>
	</footer>
</body>
</html>
