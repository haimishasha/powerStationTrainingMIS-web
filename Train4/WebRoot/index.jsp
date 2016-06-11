<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>"/>
<meta charset="utf-8" />
<title>电厂职工管理系统</title>
</head>
<body>
	<jsp:include page="Plan/searchPlan.jsp"></jsp:include>
</body>
</html>