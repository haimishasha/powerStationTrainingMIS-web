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
    
    <title>My JSP 'showSearch.jsp' starting page</title>
    
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
	<s:form action="doSearch">
		<s:textfield name="trainPlan.TRAIN_PLAN_YEAR" label="培训计划年度"></s:textfield>
		<s:textfield name="trainPlan.ZY_NAME" label="培训专业"></s:textfield>
		<s:textfield name="planType" label="培训计划类型"></s:textfield>
		<s:textfield name="trainPlan.IS_FINISH" label="完成情况"></s:textfield>
		<s:submit value="查询"></s:submit>
	</s:form>
	<table>
		<tr>
			<th><label>itemId</label></th>
			<th><label>年度</label></th>
			<th><label>培训类型</label></th>
			<th><label>培训人数</label></th>
			<th><label>完成情况</label></th>
		</tr>
 	<s:iterator value="trainPlans" var="trainPlan"> 
		<tr>
			<td><s:property value="#trainPlan.TRAIN_ITEM_ID"/>
			<td><s:property value="#trainPlan.TRAIN_PLAN_NAME"/></td>	
			<td><s:property value="#trainPlan.planType"/></td>
			<td><s:property value="#trainPlan.num"/></td>
			<td><s:property value="#trainPlan.IS_FINISH"/></td>	
		</tr>
 	</s:iterator> 
	</table>
  </body>
</html>
