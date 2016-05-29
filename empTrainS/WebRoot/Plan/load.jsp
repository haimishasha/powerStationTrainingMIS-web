<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'load.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/jquery-2.2.2.min.js" ></script>
		<script type="text/javascript" src="js/bootstrap.min.js" ></script>
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/main.css" />
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
		<hr style="border: solid 1px #4397D5;" />
		<div class="title">
			<div class="title_left">
				<h1>电厂职工培训信息管理系统</h1>
			</div>
			<div class="title_right ">
				<a href="#">加入收藏</a>
				<a href="#">设为主页</a>
			</div>
		</div>
		
		<div class="row">
    	<div class="col-xs-6 col-sm-3"> xianshi shi zai zheli duo jia dian neirong kankan .col-xs-6 .col-sm-3</div>
   	 	<div class="col-xs-6 col-sm-3">.col-xs-6 .col-sm-3</div>
   	 	<div class="clearfix visible-xs"></div>
    	<div class="col-xs-6 col-sm-3">.col-xs-6 .col-sm-3</div>
    	<div class="col-xs-6 col-sm-3">.col-xs-6 .col-sm-3</div>
		</div>
		
		<div class="">
			
		</div>
		<!--<div class="footer">
			<p>Copyright © 2015-2016 Tencent. All Rights Reserved.    电厂职工培训管理系统      技术支持联系方式：0351-6998011</p>
			<p>版权所有 备案证号：晋ICP备050024564号</p>
		</div>-->
  </body>
</html>
