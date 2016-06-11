<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加计划</title>
	<script type="text/javascript" src="js/jquery-2.2.2.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="css/bootstrap.min.css" />
	<link rel="stylesheet" href="css/main.css" />
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

				<div>
					<form id="infoForm" action="doAdd" method="post">
					<div class="row">
						<div class="col-lg-6 distance distance">
						<div class="input-group">
							<span class="input-group-addon">年 度</span>
							<input type="text" class="form-control" name="trainPlanYear" id="trainPlanYear"/>
						</div>
						</div>
						
						<div class="col-lg-6 distance distance">
							<div class="input-group">
								<span class="input-group-addon">名 称</span>
								<input type="text" class="form-control" name="trainPlanName" />
							</div>
						</div>
						
						<div class="col-lg-6 distance distance">
							<div class="input-group">
								<span class="input-group-addon">开始时间</span>
								<input type="text" class="form-control" name="startTime" />
							</div>
						</div>
						
						<div class="col-lg-6 distance distance">
							<div class="input-group">
								<span class="input-group-addon">结束时间</span>
								<input type="text" class="form-control" name="endTime" />
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
											<select name="trainPlanItems[0].major" id="major">
												<option selected="selected">电气</option>
												<option >汽机</option>
												<option >锅炉</option>
												<option >化水</option>
												<option >燃运</option>
											</select>
										</td>
										<td>
											<textarea name="trainPlanItems[0].trainPurpose" rows="" cols="" id="trainPurpose"></textarea>
										</td>
										<td>
											<textarea name="trainPlanItems[0].trainContent" rows="" cols="" id="trainContent"></textarea>
										</td>
										<td>
											<input type="text"  name="trainPlanItems[0].classCount" id="classCount"/>
										</td>
										<td>
											<input type="text" name="trainPlanItems[0].teacher" id="teacher"/>
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
		<jsp:include page="../footer.jsp"/>
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
