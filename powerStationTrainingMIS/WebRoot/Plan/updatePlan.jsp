<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML">
<html>
<head>
<base href="<%=basePath%>">
<title>修改计划</title>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/main.css" />
<link rel="stylesheet" href="css/jquery.ui.datepicker.css">
<link rel="stylesheet" href="css/Plan/addPlan.css">
<script type="text/javascript" src="js/jquery-2.2.2.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/Plan/addPlan.js"></script>
<script type="text/javascript" src="js/jquery.ui.core.js"></script>
<script type="text/javascript" src="js/jquery.ui.datepicker.js"></script>

   <script type="text/javascript" src="js/train_plan_manag/trainPlan.js" ></script>
</head>
<body>
    
     
    
	 <jsp:include page="../nav.jsp" />

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
				<form  action="UpdateAction" method="post">
					<div class="row">
						<div class="col-lg-6 distance distance">
							<div class="input-group">
								<span class="input-group-addon">年 度</span> <select
									class="form-control" name="trainPlanInfo.trainPlanYear" value="${trainPlanInfo.trainPlanYear}">
									<option value="">2016</option>
									<option value="">2015</option>
									<option value="">2014</option>
								</select>
							</div>
						</div>
						<div class="col-lg-6 distance distance">
							<div class="input-group">
								<span class="input-group-addon">名 称</span> <select
									class="form-control" name="trainPlanInfo.trainPlanName" value="${trainPlanInfo.trainPlanName}">
									<option value="0">新员工入厂培训</option>
									<option value="1">中层管理人员培训</option>
									<option value="2">班组长培训</option>
								</select>
							</div>
						</div>

						<div class="col-lg-6 distance distance">
							<div class="input-group">
								<span class="input-group-addon">开始时间</span> <input type="text"
									id="startTime" class="datepicker" class="form-control"
									name="trainPlanInfo.startTime" value="${trainPlanInfo.startTime}"/>
							</div>
						</div>
						<div class="col-lg-6 distance distance">
							<div class="input-group">
								<span class="input-group-addon">结束时间</span> <input type="text"
									id="endTime" class="datepicker" class="form-control"
									name="trainPlanInfo.endTime" value="${trainPlanInfo.endTime}" />
							</div>
						</div>

					</div>
					<!-- </form>	 -->

					<div class="distance">
						<!-- <form> -->

						<div class="table table-responsive">
							<table id="test_table" class="table table-bordered table_mag"
								style="width: 100%;">
								<thead>
									<tr>
										<th>专业</th>
										<th>培训目的</th>
										<th>培训内容</th>
										<th>课时</th>
										<th>授课人</th>
									</tr>
								</thead>
							
								<tbody id="itemTbody">
									 <tr>
										<td><select class="trainPlanItems"
											name="trainPlanItems[0].major" value="${trainPlanItems[0].major }" id="major">
												<option value="0" selected="selected">电气</option>
												<option value="1">汽机</option>
												<option value="2">锅炉</option>
												<option value="3">化水</option>
												<option value="4">燃运</option>
										</select></td>
										<td><textarea class="trainPlanItems"
												name="trainPlanItems[0].trainPurpose"   rows="4" cols="24"
												style="resize: none;" id="trainPurpose">${trainPlanItems[0].trainPurpose}</textarea></td>
										<td><textarea class="trainPlanItems"
												name="trainPlanItems[0].trainContent"   rows="4" cols="24"
												style="resize: none;" id="trainContent">${trainPlanItems[0].trainContent}</textarea></td>
										<td><input type="text" class="trainPlanItems"
											name="trainPlanItems[0].classCount" value="${trainPlanItems[0].classCount}" id="classCount" /></td>
										<td><input type="text" class="trainPlanItems"
											name="trainPlanItems[0].teacher" value="${trainPlanItems[0].teacher}" id="teacher" /></td>
									</tr>
											
								<%-- 	<c:forEach var="trainPlanItems" varStatus="status"  items="${trainPlanItems}">
								<tr>
									
									<td><select class="trainPlanItems"
											name="trainPlanItems.major" value="${trainPlanItems.major }" id="major">
												<option value="0" selected="selected">电气</option>
												<option value="1">汽机</option>
												<option value="2">锅炉</option>
												<option value="3">化水</option>
												<option value="4">燃运</option>
										</select></td>
										<td><textarea class="trainPlanItems"
												name="trainPlanItems[status.index].trainPurpose"   rows="4" cols="24"
												style="resize: none;" id="trainPurpose">${trainPlanItems.trainPurpose}</textarea></td>
										<td><textarea class="trainPlanItems"
												name="trainPlanItems['status.index'].trainContent"   rows="4" cols="24"
												style="resize: none;" id="trainContent">${trainPlanItems.trainContent}</textarea></td>
										<td><input type="text" class="trainPlanItems"
											name="trainPlanItems.classCount" value="${trainPlanItems.classCount}" id="classCount" /></td>
										<td><input type="text" class="trainPlanItems"
											name="trainPlanItems.teacher" value="${trainPlanItems.teacher}" id="teacher" /></td>
								
								</tr>
							    </c:forEach> --%>

								</tbody>
								<tfoot>
									<tr>
										<td></td>
										<td></td>
										<td><input type="hidden" id="itemNum" value="1" /></td>
										<td></td>
										<td>
										<!-- <input type="button" id="addNewLine" value="添加">
										<input type="button" id="deleteLastLine" value="删除"> --><input
											type="submit" value="保 存"  class="btn_class" /></td>
									</tr>
								</tfoot>
							</table>
						</div>
					</div>
				</form>
			</div>

		</div>
	</div>
	<jsp:include page="../footer.jsp" /> 
</body>
</html>
