<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'add.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/jquery-2.2.2.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="css/bootstrap.min.css" />
	<link rel="stylesheet" href="css/main.css" />
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.2.2.min.js"></script>
  <script>
			$(document).ready(function(){
				$("#bt1").click(function(){
				});
			});
		</script>
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
								<li><a href="index.html">查询</a></li>
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
						<li class="active">查询</li>
					</ol>
				</div>

				<div>
					<form id="infoForm" action="${pageContext.request.contextPath}/doAdd" method="post">
					<div class="row">
						<div class="col-lg-6 distance distance">
						<div class="input-group">
							<span class="input-group-addon">年 度</span>
							<input type="text" class="form-control" name="TRAIN_PLAN_YEAR" id="TRAIN_PLAN_YEAR"/>
						</div>
						</div>
						
						<div class="col-lg-6 distance distance">
							<div class="input-group">
								<span class="input-group-addon">名 称</span>
								<input type="text" class="form-control" name="TRAIN_PLAN_NAME" />
							</div>
						</div>
						
						<div class="col-lg-6 distance distance">
							<div class="input-group">
								<span class="input-group-addon">开始时间</span>
								<input type="text" class="form-control" name="START_TIME" />
							</div>
						</div>
						
						<div class="col-lg-6 distance distance">
							<div class="input-group">
								<span class="input-group-addon">结束时间</span>
								<input type="text" class="form-control" name="END_TIME" />
							</div>
						</div>
					
					</div>
					<!-- </form>	 -->			
					
					<div class="distance">
						<!-- <form> -->
						
							<div class="table table-responsive">
								<table id="test_table" class="table table-bordered table_mag" style="width: 100%;">
									<tr>
										<th>专业</th>
										<th>培训目的</th>
										<th>培训内容</th>
										<th>课时</th>
										<th>授课人</th>
									</tr>
									<tr id="test_tr">
										<td>
											<select name="trainPlanItems[0].ZY_NAME" id="ZY_NAME">
												<option selected="selected">电气</option>
												<option >汽机</option>
												<option >锅炉</option>
												<option >化水</option>
												<option >燃运</option>
											</select>
										</td>
										<td>
											<textarea name="trainPlanItems[0].TRAIN_PURPOSE" rows="" cols="" id="TRAIN_PURPOSE"></textarea>
										</td>
										<td>
											<textarea name="trainPlanItems[0].TRAIN_CONTENT" rows="" cols="" id="TRAIN_CONTENT"></textarea>
										</td>
										<td>
											<input type="text"  name="trainPlanItems[0].CLASS_COUNT" id="CLASS_COUNT"/>
										</td>
										<td>
											<input type="text" name="trainPlanItems[0].TEACHER" id="TEACHER"/>
										</td>
									</tr>
								</table>
							</div>
						
					</div>
															
					<!-- <button id="" class="btn_class" onclick="testtable1()">ADD</button>
					<button id="" class="btn_class" onclick="testtable()">删 除</button>	 -->
					<input type="button" class="btn_class" onclick="testtable1()" value="ADD">
					<input type="button" class="btn_class" onclick="testtable()" value="删除">
					<input type="submit" value="保 存"  id="save" class="btn_class" />
						</form>
				</div>
							
			</div>
		</div>
		<!--<div class="container">
			<ol class="breadcrumb"><li><a href="#">电厂职工管理</a></li><li><a href="#">培训计划管理</a></li><li class="active">修改</li></ol>
		</div>-->
		<hr style="border:solid 1px; margin-top: 10px; margin-bottom:10px ;" />
		<footer style="text-align: center;margin-bottom: 30px;">
			<p>版权信息</p>
			<p>版权信息一般还有两行</p>
		</footer>
		<script type="text/javascript">
			function testtable1(){
			    var table = document.getElementById("test_table");
			    var tab = document.getElementById("test") ;
			      //表格行数
			    var rows1 = table.rows.length ;
			      //表格列数
			    var cells = table.rows.item(0).cells.length ;
				//alert("行数"+rows1+"列数"+cells);
				if(rows1 < 6){					
					$("#test_tr").clone(true).appendTo("#test_table");
				}
				else{
					alert("没有更多的专业了！！！");
				}
			}
//			$("#btn").click(function() {
//				$("#test_tr").clone(true).appendTo("#test_table");
//			});
			function testtable(){
			    var table = document.getElementById("test_table");
			    var tab = document.getElementById("test") ;
			      //表格行数
			    var rows1 = table.rows.length ;
			      //表格列数
			    var cells = table.rows.item(0).cells.length ;
				//alert("行数"+rows1+"列数"+cells);
				if(rows1 > 2){
					table.deleteRow(rows1-1);
				}
			}
		</script>
	</body>
</html>
