<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'update.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
   <script type="text/javascript" src="js/jquery-2.2.2.min.js"></script>
 <script type="text/javascript">
function update() { 
//这里planId 的获取是通过获取隐藏域里的value得到
$.ajax({ data:{"planId":1,"itemsId":"1,2"},
         type:"post",
         url:"${pageContext.request.contextPath}/UpdateAction"
         });

   window.location ="${pageContext.request.contextPath}/UpdateAction";
} 
 </script>
 
 </head>
  
  <body>
    这里是修改界面
  
dfsd
%>
 
 
 
  </body>
</html>
