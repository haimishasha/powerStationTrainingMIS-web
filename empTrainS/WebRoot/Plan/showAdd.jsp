<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showAdd.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
	<s:form action="doAdd" namespace="">
		<s:textfield name="trainPlanInfo.TRAIN_PLAN_YEAR" label="年度"></s:textfield>
		<s:textfield name="trainPlanInfo.TRAIN_PLAN_NAME" label="名称"></s:textfield>
		<s:textfield name="trainPlanInfo.START_TIME" label="开始时间"></s:textfield>
		<s:textfield name="trainPlanInfo.END_TIME" label="结束时间"></s:textfield>
		<s:submit value="保存"></s:submit>
		
		<table>
			<tr>
				<th>专业</th>
				<th>培训目的</th>
				<th>培训内容</th>
				<th>课时</th>
				<th>授课人</th>
			</tr>
			<tr>
				<td><input type="text" name="trainPlanItems[0].ZY_NAME"></td>
				<td><input type="text" name="trainPlanItems[0].TRAIN_PURPOSE"></td>
				<td><input type="text" name="trainPlanItems[0].TRAIN_CONTENT"></td>
				<td><input type="text" name="trainPlanItems[0].CLASS_COUNT"></td>
				<td><input type="text" name="trainPlanItems[0].TEACHER"></td>
			</tr>
			<tr>
				<td><input type="text" name="trainPlanItems[1].ZY_NAME"></td>
				<td><input type="text" name="trainPlanItems[1].TRAIN_PURPOSE"></td>
				<td><input type="text" name="trainPlanItems[1].TRAIN_CONTENT"></td>
				<td><input type="text" name="trainPlanItems[1].CLASS_COUNT"></td>
				<td><input type="text" name="trainPlanItems[1].TEACHER"></td>
			</tr>
		</table>
	</s:form>
  </body>
</html>
