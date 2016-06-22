<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
	<head>
		<base href="<%=basePath%>">
		<title>电厂职工管理系统</title>
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<script src="js/jquery-2.2.2.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="css/attendance/attendrecord.css">	
		
		<script type="text/javascript">
		$(document).ready(function () {
			
			
			
			
			
		});
		
		</script>	
	</head>
	<body>
		 <jsp:include page="../nav.jsp" />

		<div class="Mycontent">
			<div class="container">
				<div class="content_title">
					<hr />
					<ol class="breadcrumb">
						<li><a href="#">电厂</a></li>
						<li><a href="#">培训考勤管理</a></li>
						<li class="active">查询</li>
					</ol>
				</div>
				
				<div class="content_body">
					<form action="SearchTrainPlan.action" method="post" >
							<div class="row">
								<div class="col-lg-6 col-md-6 col-xs-12">
									<div class="input-group">
										<span class="input-group-addon">培训计划年度</span>
										<select class="form-control" name="trainPlanCondition.trainPlanYear">
											<option value="" selected="selected">2015</option>
											<option value="0">2014</option>
											<option value="1">2013</option>
											<option value="2">2012</option>
											<option value="3">2011</option>
										</select>
									</div>
								</div>
								<div class="col-lg-6 col-md-6 col-xs-12">
									<div class="input-group">
										<span class="input-group-addon">培训计划名称专业：</span>
										<select class="form-control" name="trainPlanCondition.trainPlanName">
											<option value="" selected="selected">电气</option>
											<option value="0">汽机</option>
											<option value="1">锅炉</option>
											<option value="2">化水</option>
											<option value="3">燃运</option>
										</select>
									</div>
								</div>
								<div class="col-lg-6 col-md-6 col-xs-12">
									<div class="input-group">
										<div class="input-group-addon">培训计划类型：</div>
										<select class="form-control" name="trainPlanCondition.trainPlanType">
											<option value="" selected="selected">新员工入厂培训</option>
											<option value="0">中层管理人员培训</option>
											<option value="1">班组长培训</option>
										</select>
									</div>
								</div>
								<div class="col-lg-6 col-md-6 col-xs-12">
									<button type="submit" id="select_btn" class="btn btn-info">查询</button>
								</div>
							</div>										
					</form>
					<div class="hr"></div>
					<div class="showform">
						<div class="showform_title">
							<nav class="navbar navbar-default" style="background-color: white;border: none;">
								<div class="container-fluid">
									<!-- Brand and toggle get grouped for better mobile display -->
									<div class="navbar-header">
										<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2" aria-expanded="false">
       										<span class="glyphicon glyphicon-pencil"></span>       									
     									</button>
     									<p class="navbar-text">共 : <span style="color: red;">10条</span> 信息</p>
										
									</div>

									<!-- Collect the nav links, forms, and other content for toggling -->
									<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
										<ul class="nav navbar-nav navbar-left hidden-xs">
											<a type="button" class="btn btn-default navbar-btn">导 出</a>
											<a type="button" class="btn btn-default navbar-btn">打 印</a>
										</ul>										
									</div>
								</div>
							</nav>
						</div>					
						<div class="show_table table-responsive">
							<table class="table table-hover table-bordered">
									<tr>
							 			<th>序号</th>
							 			<th>年度</th>
							 			<th>培训计划名称</th>
							 			<th>培训类型</th>
							 			<th>培训专业</th>
							 			<th>培训时间</th>
							 			<th>培训人数</th>
						 			</tr>
						 			
						 			<!-- 循环读取后台传入的数据 -->
						 			<c:forEach var="trainPlanInfo" varStatus="status"  items="${trainPlanInfoList}">
								   
								 <tr>
								    <td> <c:out value="${status.index+1}"/></td>                                
									<td>${trainPlanInfo.trainPlanYear}</td>
									<td>${trainPlanInfo.trainPlanName}</td>
									<td>${trainPlanInfo.trainPlanType}</td>
									<td>
									<c:forEach var="str" varStatus="status"  items="${fn:split(trainPlanInfo.major,' ')}">
									
									 <a href="ToSaveAttendView.action?trainPlanId=${trainPlanInfo.trainPlanId}&major=${str}
									 &trainPlanYear=${trainPlanInfo.trainPlanYear}&trainPlanName=${trainPlanInfo.trainPlanName}
									 &trainPlanType=${trainPlanInfo.trainPlanType}
									 &trainTime=${trainPlanInfo.trainTime}">${str}</a>&nbsp;
									 </c:forEach>
									</td>
									<td>${trainPlanInfo.trainTime}</td>
								    <td>${trainPlanInfo.staffNum}</td>									
									
								</tr>
							    </c:forEach>
						 			<!-- <tr>
										<td>1</td>
							 			<td>2014</td>
							 			<td>锅炉</td>
							 			<td>新人</td>/
							 			<td class="information"><a href="recorddetail.html">锅炉专业</a></td>
							 			<td>2014</td>
							 			<td>20</td>
						 			</tr>
						 			<tr>
						 				<td>2</td>
							 			<td>2014</td>
							 			<td>锅炉</td>
							 			<td>新人</td>
							 			<td class="information">锅炉专业</td>
							 			<td>2014</td>
							 			<td>20</td>
						 			</tr>			 -->					
							</table>
						</div>

						<nav style="text-align: center;">
							<ul class="pagination">
								<li>
									<a href="#" aria-label="Previous">
										<span aria-hidden="true">&laquo;</span>
									</a>
								</li>
								<li class="active"><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li>
									<a href="#" aria-label="Next">
										<span aria-hidden="true">&raquo;</span>
									</a>
								</li>
							</ul>
						</nav>
					</div>

				</div>
			</div>
		<div class="hr"></div>
		</div>		
		<jsp:include page="../footer.jsp" />
	</body>

</html>
