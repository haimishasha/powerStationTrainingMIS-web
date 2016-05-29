<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'SearchUnit.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript">
  function    searchUnit(){
  window.location="${pageContext.request.contextPath}/SearchUnit";
  
  }
  
</script>
  </head>
  
  <body>
           这里是查询部门界面
   <input type="button" value="查询" onclick="searchUnit()"/>
   <a href="./updateUnit.jsp">修改</a>
     <a href="./AddUnit.jsp">添加</a>
       <a href="./AddUnit.jsp">删除</a>
  </body>
</html>
