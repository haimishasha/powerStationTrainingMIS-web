<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<base href="<%=basePath%>"/>
	<title>学员个人出勤信息</title>
	<link rel="stylesheet" href="css/bootstrap.min.css" />
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>	
</head>
<body>
 <jsp:include page="../nav.jsp" />
	<div>
		<div style="text-align:center">
			<h3>学员出勤信息</h3>
		</div>
		<div class="table-responsive">
			<table class="table table-hover table-bordered">
				<tr>
					<th>序号</th>
					<th>上课时间</th>
					<th>到课时间</th>
					<th>出勤情况</th>
				</tr>
				
				<c:forEach var="attendInfo" varStatus="status"  items="${staffAttendInfoList}">
					<tr>
					<td> <c:out value="${status.index+1}"/></td> 
					<td>${attendInfo.startTime }</td>
					<td>${attendInfo.arriveTime }</td>
					<td>${attendInfo.attendStatus }</td>		
					</tr>				
				</c:forEach>
				<!-- <tr>
					<td>1</td>
					<td>8:00</td>
					<td>15:00</td>
					<td>正常</td>
				</tr> -->
			</table>
		</div>	
	</div>	
	<jsp:include page="../footer.jsp" />
</body>
</html>