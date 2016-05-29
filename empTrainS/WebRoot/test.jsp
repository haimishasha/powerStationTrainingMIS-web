<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
<meta charset="utf-8" />
<title>电厂职工管理系统</title>
<script type="text/javascript" src="js/jquery-2.2.2.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/main.css" />
<!--<script>
		var time=document.createElement('p');
		time.innerHTML=document.write(Date());
		document.getElementById('time1').appendChild();
		</script>-->

<script type="text/javascript">
	function update() {
		window.location ="${pageContext.request.contextPath}/Update_Train_Plan";
	}
	function Delete() {
		window.location ="${pageContext.request.contextPath}/Delete_Train_Plan";
	}
	
</script>
</head>

<body>
	<div class="bef_nav">
		<div class="container">
			<div class="bef_nav_right">
				<span style="margin-right: 20px;">欢迎 : 管理员</span><a href="#">修改密码</a><a
					href="#">退出系统</a>
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
						<li><a href="#">添加</a></li>
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
					<li><a href="#">培训计划管理</a></li>
					<li class="active">查询</li>
				</ol>
			</div>

			<div class="content_body">
				<form action="${pageContext.request.contextPath}/doSearch" method="post" style="border:1px solid">
					<div class="sele_block">
						<div class="row">
							<div class="col-lg-6 col-md-6 col-xs-12 distance">
								<div class="input-group">
									<span class="input-group-addon">培训计划年度：</span> <select
										class="form-control" name="TRAIN_PLAN_YEAR">
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
										class="form-control" name="ZY_NAME">
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
										class="form-control" name="TRAIN_PLAN_TYPE">
										<option>新员工入厂培训</option>
										<option>中层管理人员培训</option>
										<option>班组长培训</option>
									</select>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-xs-12 distance">
								<div class="input-group">
									<span class="input-group-addon">完成情况：</span> <select
										class="form-control" name="IS_FINISH">
										<option>未培训</option>
										<option>培训中</option>
										<option>已培训</option>
									</select>
								</div>
							</div>
							<button  type="submit" class="btn btn-default"
								style="float: right; margin-top: 7px; margin-right: 30px;"
								>查 询</button>
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
									<button type="button" class="btn btn-default navbar-btn">创
										建</button>
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
							<table border="" cellspacing="" cellpadding="" style="width:800px;height:auto;">

							<tr>
								<td>序号</td>
								<td>培训计划年度</td>
								<td>培训专业</td>
								<td>是否结束</td>
								<td>培训计划类型</td>
							</tr>
							<c:forEach var="t" items="${trainPlans}">
							<tr>
							<td>${t.TRAIN_PLAN_ID}</td>
								<td>${t.TRAIN_PLAN_YEAR}</td>
								<td>${t.ZY_NAME}</td>
								<td>${t.IS_FINISH}</td>
								<td>${t.TRAIN_PLAN_TYPE}</td>	
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
	<hr style="border:solid 1px; margin-top: -10px; margin-bottom:10px ;" />
	<footer style="text-align: center;margin-bottom: 30px;">
	<p>版权信息</p>
	<p>版权信息一般还有两行</p>
	</footer>
</body>

</html>			
					