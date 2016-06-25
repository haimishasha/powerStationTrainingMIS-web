<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
	<title>电厂职工管理系统</title>
    
	<script type="text/javascript" src="js/jquery-2.2.2.min.js" ></script>
	<script type="text/javascript" src="js/bootstrap.js" ></script>
	<script type="text/javascript" src="js/jquery.ztree.core-3.5.js"></script>
	<script type="text/javascript" src="js/student_info/student_assign.js" ></script>
	<link rel="stylesheet" href="css/bootstrap.css" />
	<link rel="stylesheet" href="css/main.css" />
	<link rel="stylesheet" href="css/student_assign/student_assign.css" />
	<link rel="stylesheet" type="text/css" media="screen"
	href="css/zTreeStyle/zTreeStyle.css" />
  </head>
  
  <body>
	<jsp:include page="../nav.jsp" />

		<div class="Mycontent">
			<div class="container">
				<div class="">
					<div class="content_top">
						<div class="content_top_left fl">
							<ul id="treeDemo" class="ztree"></ul>
						</div>
						<div class="content_top_right fr">
							<div class="top_pormpt">
								<div class="fl">
									<strong>部门:</strong>
									<span>-发电一部-</span>
									<span>-电气一班-</span>
									<input type="hidden" id="hidden_UnitId" value="">
									<input type="hidden" id="hidden_UnitName" value="">
									<input type="hidden" id="hidden_PlanItemId" value="${trainItemId}">
								</div>
								<div class="fr">
									<button id="student_save_choice">选择</button>
								</div>
							</div>
							<div>
								<table class="table table-hover table-bordered"  id="student_resave_table">
									<thead>
										<tr>
											<th class="row_hide td_mark">员工编号</th>
											<th>姓名</th>
											<th class="row_hide td_mark">部门</th>
											<th>职务</th>
											<th>入厂时间</th>
											<th>岗位</th>
											<th></th>
										</tr>
									</thead>
									<tbody>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class="content_bottom">
						<div class="content_bottom_title">
							<div class="fl">
								已安排的学员<strong id="manageNum"> 9 </strong>人
							</div>
							<div class="fr">
								<button><a href="#">返回</a></button>
								<button id="student_delect_choice">删除</button>
								<button id="save_to_db">保存</button>
							</div>
						</div>
						<div class="content_bottom_table ">
							<form action="addStudent" method="post">
							<input type="hidden" id="hidden_PlanItemId" name="trainItemId" value="${trainItemId}">
								<table class="table table-hover table-bordered" id="student_save_table">
									<thead>
										<tr>
											<th>员工编号</th>
											<th>姓名</th>
											<th>部门</th>
											<th>职务</th>
											<th>入厂时间</th>
											<th>岗位</th>
											<th></th>
										</tr>
									</thead>
									<tbody>
										
										
									</tbody>
								</table>
								<input type="submit" style="display:none" id="submitButton">
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		
	<jsp:include page="../footer.jsp"></jsp:include>
  </body>
</html>
