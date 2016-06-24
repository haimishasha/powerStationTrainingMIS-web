<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">

<title>导航条</title>
</head>

<body>
	<div class="nav-wrapper">
		<ul class="vertical-nav">
			<li class="active"><a href="toHome.action"><i class="glyphicon glyphicon-home" title="首页"></i></a></li>
			<li><a href="Result/entryMark.jsp"><i class="glyphicon glyphicon-pencil" title="录入成绩"></i></a></li>
			<li><a href="Result/updateMark.jsp"><i class="glyphicon glyphicon-edit" title="修改成绩"></i></a></li>
			<li><a href="Result/searchMark.jsp"><i class="glyphicon glyphicon-search" title="查询成绩"></i></a></li>
		</ul>
	</div>
</body>
</html>
