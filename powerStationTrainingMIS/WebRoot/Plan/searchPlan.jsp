<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
<base href="<%=basePath%>">
<meta charset="utf-8" />
<title>电厂职工管理系统</title>
<script type="text/javascript" src="js/jquery-2.2.2.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/main.css" />
<script type="text/javascript">
	function update() {
		window.location = "UpdateAction";
	}
	function Delete() {
		var trainPlanId = $("input[name='choose']:checked").val();
		window.location = "doDelete?trainPlanId="
				+ trainPlanId;
	}
</script>
</head>

<body>
	<jsp:include page="../nav.jsp"/>
	<div class="Mycontent">
		<div class="container">
			<div class="content_title">
				<!--<hr />-->
				<ol class="breadcrumb">
					<li><a href="#">电厂</a></li>
					<li><a href="#">培训计划管理</a></li>
					<li class="active">查询</li>
				</ol>
			</div>

			<div class="content_body">
				<form action="SearchAction"
					method="post" style="border:1px solid">
					<div class="sele_block">
						<div class="row">
							<div class="col-lg-6 col-md-6 col-xs-12 distance">
								<div class="input-group">
									<span class="input-group-addon">培训计划年度：</span> <select
										class="form-control" name="trainPlanYear">
										<option>2016</option>
										<option>2015</option>
										<option>2014</option>
										<option>2013</option>
										<option>2012</option>
									</select>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-xs-12 distance">
								<div class="input-group">
									<span class="input-group-addon">培训专业：</span> <select
										class="form-control" name="major">
										<option>电气</option>
										<option>汽机</option>
										<option>锅炉</option>
										<option>化水</option>
										<option>燃运</option>
									</select>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-xs-12 distance">
								<div class="input-group">
									<span class="input-group-addon">培训计划类型：</span> <select
										class="form-control" name="trainPlanType">
										<option>新员工入厂培训</option>
										<option>中层管理人员培训</option>
										<option>班组长培训</option>
									</select>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-xs-12 distance">
								<div class="input-group">
									<span class="input-group-addon">完成情况：</span> <select
										class="form-control" name="isFinish">
										<option>未培训</option>
										<option>培训中</option>
										<option>已培训</option>
									</select>
								</div>
							</div>
							<button type="submit" class="btn btn-default"
								style="float: right; margin-top: 7px; margin-right: 30px;">查
								询</button>
						</div>
						<hr style="border:solid 1px;" />
					</div>
				</form>

				<div class="showform">
					<div class="showform_title">
						<nav class="navbar navbar-default"
							style="background-color: white;border: none;">
						<div class="container-fluid">
							<!-- Brand and toggle get grouped for better mobile display -->
							<div class="navbar-header">
								<button type="button" class="navbar-toggle collapsed"
									data-toggle="collapse"
									data-target="#bs-example-navbar-collapse-2"
									aria-expanded="false">
									<span class="glyphicon glyphicon-pencil"></span>
								</button>
								<p class="navbar-text">
									共 : <span style="color: red;">10条</span> 信息
								</p>

							</div>

							<!-- Collect the nav links, forms, and other content for toggling -->
							<div class="collapse navbar-collapse"
								id="bs-example-navbar-collapse-2">
								<ul class="nav navbar-nav navbar-left hidden-xs">
									<button type="button" class="btn btn-default navbar-btn">导
										出</button>
									<button type="button" class="btn btn-default navbar-btn">打
										印</button>
								</ul>
								<ul class="nav navbar-nav navbar-right">
									<button type="button" class="btn btn-default navbar-btn"><a style="color: black" href="toAddPlan.action">添加</a></button>
									<button type="button" class="btn btn-default navbar-btn"
										onclick="update()">修 改</button>
									<button type="button" class="btn btn-default navbar-btn"
										onclick="Delete()">删 除</button>
								</ul>
							</div>
							<!-- /.navbar-collapse -->
						</div>
						<!-- /.container-fluid --> </nav>
					</div>

					<div class="table table-responsive">
						<table border="" cellspacing="" cellpadding=""
							style="width:800px;height:auto;">

							<tr>
								<td>请选择</td>
								<td>培训计划年度</td>
								<td>培训专业</td>
								<td>是否结束</td>
								<td>培训计划类型</td>
							</tr>
							<c:forEach var="trainPlan" items="${trainPlanList}">
								<tr>
									<td><input type="radio" name="choose"
										value="${trainPlan.trainPlanId}" checked="checked"></td>

									<td>${trainPlan.trainPlanYear}</td>
									<td>${trainPlan.major}</td>
									<td>${trainPlan.isFinish}</td>
									<td>${trainPlan.trainPlanType}</td>
								</tr>
							</c:forEach>


						</table>
					</div>
					<nav style="text-align: center;">
					<ul class="pagination">
						<li><a href="#" aria-label="Previous"> <span
								aria-hidden="true">&laquo;</span>
						</a></li>
						<li class="active"><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#" aria-label="Next"> <span
								aria-hidden="true">&raquo;</span>
						</a></li>
					</ul>
					</nav>
				</div>

			</div>
		</div>
	</div>
	<!--<div class="container">
			<ol class="breadcrumb"><li><a href="#">电厂职工管理</a></li><li><a href="#">培训计划管理</a></li><li class="active">修改</li></ol>
		</div>-->
	<jsp:include page="../footer.jsp"/>
</body>

</html>
