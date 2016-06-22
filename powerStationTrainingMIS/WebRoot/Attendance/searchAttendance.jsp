<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<base href="<%=basePath%>"/>
	<title></title>
	<link rel="stylesheet" href="css/bootstrap.min.css" />
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="css/attendance/attendrecord.css">
	<!-- <script>
		$(function(){

				$("#selectinfo").click(function(){

					$("#main").attr("src","attendinfo.html");

				});

		});
	</script> -->
	<style>
			#main{
			margin-left:0px;
			}
	</style>
</head>
<body>
	 <jsp:include page="../nav.jsp" />
	<div class="container" style="margin-top:10px">
			<form action="SearchAllStaffAttend.action" method="post" id="form1">
					<div class="row">
							<div class="col-lg-6 col-md-6 col-xs-12">
								<div class="input-group">
									<label for="" class="input-group-addon">培训计划年度</label>
									<select class="form-control" name="allStaffAttendCondition.trainPlanYear">
										<option  selected="selected">2016</option>
										<option >2015</option>
										<option >2014</option>
										<option >2013</option>
										<option >2012</option>
										<option >2011</option>
									</select>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-xs-12">
								<div class="input-group">
									<label for="" class="input-group-addon">&nbsp;培&nbsp;训&nbsp;专&nbsp;业&nbsp;&nbsp;&nbsp;</label>
									<select class="form-control" name="allStaffAttendCondition.major">
										<option  selected="selected">电气</option>
										<option >汽机</option>
										<option >锅炉</option>
										<option >化水</option>
										<option >燃运</option>
									</select>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-xs-12">
								<div class="input-group">
									<label for="" class="input-group-addon">培训计划名称</label>
									<input type="text" class="form-control" name="allStaffAttendCondition.trainPlanName">						
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-xs-12">
								<div class="input-group">
									<label for class="input-group-addon">培训计划类型</label>
									<select class="form-control" name="allStaffAttendCondition.trainPlanType">
										<option  selected="selected">新员工入厂培训</option>
										<option >中层管理人员培训</option>
										<option>班组长培训</option>
									</select>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-xs-12">
								<div class="input-group">
									<label for="" class="input-group-addon">&nbsp;学&nbsp;员&nbsp;姓&nbsp;名&nbsp;&nbsp;&nbsp;</label>
									<input type="text" class="form-control" name="allStaffAttendCondition.staffName">
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-xs-12">
								<button type="submit" id="selectinfo" class="btn btn-info">查询</button>
							</div>
					</div>										
			</form>
			<div class="hr"></div>
			<table class="table table-bordered table-hover">
	    		<tr>
	    			<th>姓名</th>
	    			<th>部门</th>
	    			<th>出勤次数</th>
	    			<th>缺勤次数</th>
	    			<th>迟到次数</th>
	    		</tr>
	    		<!-- 读取学员考勤记录 -->
	    		<c:forEach var="attendInfo" varStatus="status"  items="${attendCountList}">
				   <tr>
				    <td><a href="SearchOneStaffAttend.action?staffId=${attendInfo.staffId }&trainItemId=${attendInfo.trainItemId}">${attendInfo.stuName}</a></td>
	    			<td>${attendInfo.departmentName }</td>
	    			<td>${attendInfo.attendNum }</td>
	    			<td>${attendInfo.absenceNum }</td>
	    			<td>${attendInfo.lateCount }</td>			
					</tr>				
			    </c:forEach>
	    		
	    	</table>
		</iframe>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>