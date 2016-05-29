<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'train_plan_add.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/jquery-2.2.2.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/main.css" />
		<script>
			$("#btn_one").click(function(){
				$("#clone_tr").clone(true).insertAfter("#clone_tr");
			});
		</script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
	<div class="bef_nav">
			<div class="container">			
				
				<div class="bef_nav_right">
					<span style="margin-right: 20px;">欢迎 : 管理员</span>
					<a href="#">修改密码</a>
					<a href="#">退出系统</a>
				</div>
			</div>
		</div>

		<nav class="nav navbar-inverse">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
      				 	<span class="sr-only">Toggle navigation</span>
       				 	<span class="icon-bar"></span>
        				<span class="icon-bar"></span>
        				<span class="icon-bar"></span>
      				</button>
					<a class="navbar-brand" href="#">LOGO</a>
				</div>

				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#">首页</a></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">培训计划管理<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">添加</a></li>
								<li><a href="#">修改</a></li>
								<li><a href="#">删除</a></li>
								<li><a href="#">查询</a></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">培训成绩管理<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">录入</a></li>
								<li><a href="#">修改</a></li>
								<li><a href="#">查询</a></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">培训考勤管理<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">查询</a></li>
								<li><a href="#">统计</a></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">其他<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">部门管理</a></li>
								<li><a href="#">指纹库管理</a></li>
								<li><a href="#">用户管理</a></li>
							</ul>
						</li>
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
						<li class="active">添加</li>
					</ol>
				</div>
				
				<form style="border: solid 1px red;">
					<div class="row">
					<div class="col-lg-6 distance">
						<div class="input-group">
							<span class="input-group-addon">年 度</span>
							<input type="text" class="form-control" name="" />
						</div>
					</div>
					
					
					<div class="col-lg-6 distance">
						<div class="input-group">
							<span class="input-group-addon">年 度</span>
							<input type="text" class="form-control" name="" />
						</div>
					</div>
					
					<div class="col-lg-6 distance">
						<div class="input-group">
							<span class="input-group-addon">年 度</span>
							<input type="text" class="form-control" name="" />
						</div>
					</div>
					
					<div class="col-lg-6 distance">
						<div class="input-group">
							<span class="input-group-addon">年 度</span>
							<input type="text" class="form-control" name="" />
						</div>
					</div>
					</div>
					
					<div class="">			
						<div class="table table-responsive">
							<table style="border: solid 1px red;" id="test_table" class="table table-bordered" style="width: 100%;">
								<tr>
									<th>Header</th>
									<th>Header</th>
									<th>Header</th>
									<th>Header</th>
									<th>Header</th>
								</tr>
								<tr id="test_tr">
									<td>
										<select name="">
											<option value="">1</option>
											<option value="">1</option>
											<option value="">1</option>
										</select>
									</td>
									<td><textarea name="" rows="" cols="" style="text-align: center; padding-top: 8px;padding-bottom: 8px;"></textarea></td>
									<td><textarea name="" rows="" cols=""></textarea></td>
									<td>
										<input type="text" />
									</td>
									<td>
										<input type="text" />
									</td>
								</tr>				
							</table>
							
							<button id="btn" onclick="add_tr">ADD</button>
						</div>
					</div>
					
					

				</form>
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
		<script type="text/javascript">				
			$("#btn").click(function(){
				$("#test_tr").clone(true).appendTo("#test_table");
			});
		</script>
  </body>
</html>
