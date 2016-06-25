<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
  <head>
   	<meta charset="utf-8" />
   	 <base href="<%=basePath%>">
		<title>电厂职工管理系统</title>
		<script type="text/javascript" src="js/jquery-2.2.2.min.js" ></script>
		<script type="text/javascript" src="js/bootstrap.js" ></script>
		<link rel="stylesheet" href="css/bootstrap.css" />
		<link rel="stylesheet" href="css/main.css" />
		<script type="text/javascript" src="js/train_plan_manag/train_plan.js" ></script>
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

				<div class="content_body">
					<form action="SearchAction.action" method="post" >
						<div class="sele_block">
							<div class="row">
								<div class="col-lg-6 col-md-6 col-xs-12 distance">
									<div class="input-group">
										<span class="input-group-addon">培训计划年度：</span>
										<select class="form-control" name="trainPlanYear">
										<option  selected="selected">2016</option>
										<option >2015</option>
										<option >2014</option>
										<option >2013</option>
										<option >2012</option>
									</select>
									</div>
								</div>
								<div class="col-lg-6 col-md-6 col-xs-12 distance">
									<div class="input-group">
										<span class="input-group-addon">培训专业：</span>
										<select class="form-control" name="major">
											<option  selected="selected">电气</option>
											<option >汽机</option>
											<option >锅炉</option>
											<option >化水</option>
											<option >燃运</option>
										</select>
									</div>
								</div>
								<div class="col-lg-6 col-md-6 col-xs-12 distance">
									<div class="input-group">
										<span class="input-group-addon">培训计划类型：</span>
										<select class="form-control" name="trainPlanType">
											<option  selected="selected">新员工入厂培训</option>
											<option >中层管理人员培训</option>
											<option >班组长培训</option>
										</select>
									</div>
								</div>
								<div class="col-lg-6 col-md-6 col-xs-12 distance">
									<div class="input-group">
										<span class="input-group-addon">完成情况：</span>
										<select class="form-control" name="isFinish">
											<option selected="selected">未培训</option>
											<option>培训中</option>
											<option>已培训</option>
										</select>
									</div>
								</div>
								<button type="submit" id="select_btn" class="btn btn-default" style="float: right; margin-top: 7px; margin-right: 30px;">  查  询  </button>
							</div>
							<hr style="border:solid 1px;" />
						</div>
					</form>

					<div class="showform">
						<div class="showform_title">
							<nav class="navbar navbar-default" style="background-color: white;border: none;">
								<div class="container-fluid">
									<!-- Brand and toggle get grouped for better mobile display -->
									<div class="navbar-header">
										<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2" aria-expanded="false">
       										<span class="glyphicon glyphicon-pencil"></span>       									
     									</button>
     									<p class="navbar-text">共 : <span style="color: red;">10条</span> 信息</p>
										
									</div>

									<!-- Collect the nav links, forms, and other content for toggling -->
									<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
										<ul class="nav navbar-nav navbar-left hidden-xs">
											<a type="button" class="btn btn-default navbar-btn">导 出</a>
											<a type="button" class="btn btn-default navbar-btn">打 印</a>
										</ul>										
										<ul class="nav navbar-nav navbar-right">
											<a href="Plan/addPlan.jsp" type="button" class="btn btn-default navbar-btn">添加</a>
											<input id="updatePlan" type="button" class="btn btn-default navbar-btn" value="修 改"/>
											<input id="deletePlan2" type="button" class="btn btn-default navbar-btn" value="删除"/>
										</ul>
									</div>
									<!-- /.navbar-collapse -->
								</div>
								<!-- /.container-fluid -->
							</nav>
						</div>					
						<div class="show_table table-responsive">
							<table class="table table-hover table-bordered">
								<tr>
									<th>序号</th>
									<th>年度</th>
									<th>培训计划名称</th>
									<th>培训类型</th>
									<th>培训专业</th>
									<th>培训时间</th>
									<th>培训人数</th>
									<th>完成情况</th>
									 <th><input type="checkbox" name=""/></th>
								</tr>
								
								<!-- 实现循环读取后台传入的值 -->
								<c:forEach var="trainPlan" varStatus="status"  items="${trainPlanList}">
								<tr>
								    <td> <c:out value="${status.index+1}"/></td>
                               
									<td id="${trainPlan.trainPlanId}">${trainPlan.trainPlanYear}</td>
									<td>${trainPlan.trainPlanName}</td>
									<td>${trainPlan.trainPlanType}</td>
									<td>${trainPlan.major}</td>
									<td>${trainPlan.trainTime}</td>
								    <td class="planNum"><span>${trainPlan.num}</span></td>								
									<td>${trainPlan.isFinish}</td>									
									<td><input  id="myCheckBox" type="checkbox" value="${trainPlan.trainPlanId}" name="trainPlanId"/> </td>
									
								</tr>
							    </c:forEach>
								
								<!-- <tr>
									<td>1</td>
									<td>2015</td>
									<td>新员工入厂培训</td>
									<td>新员工入厂培训</td>
									<td>电气 汽机 锅炉</td>
									<td>1月10日-1月20日</td>
									<td>100</td>
									<td>未完成</td>									
									<td><input type="checkbox" name="plan_check"/> </td>									
								</tr>
								<tr>
									<td>1</td>
									<td>2015</td>
									<td>新员工入厂培训</td>
									<td>新员工入厂培训</td>
									<td>电气 汽机 锅炉</td>
									<td>1月10日-1月20日</td>
									<td>100</td>
									<td>未完成</td>									
									<td><input type="checkbox" name="plan_check"/> </td>									
								</tr> -->
								
							</table>
						</div>

						<nav style="text-align: center;">
							<ul class="pagination">
								<li>
									<a href="#" aria-label="Previous">
										<span aria-hidden="true">&laquo;</span>
									</a>
								</li>
								<li class="active"><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li>
									<a href="#" aria-label="Next">
										<span aria-hidden="true">&raquo;</span>
									</a>
								</li>
							</ul>
						</nav>
					</div>

				</div>
			</div>
		</div>
		<div class="hr"></div>
		<footer style="text-align: center;margin-bottom: 30px;">
			<p>版权信息</p>
			<p>版权信息一般还有两行</p>
		</footer>
  </body>
</html>
