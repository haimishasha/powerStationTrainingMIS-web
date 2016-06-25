<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>电厂职工管理系统</title>
    <script type="text/javascript" src="js/jquery-2.2.2.min.js" ></script>
	<script type="text/javascript" src="js/bootstrap.js" ></script>
	<script type="text/javascript" src="js/student_info/planTrainInfo.js"></script>
	<link rel="stylesheet" href="css/bootstrap.css" />
	<link rel="stylesheet" href="css/main.css" />
	<link rel="stylesheet" href="css/train_plan_base_info/train_plan_base_info.css" />
		

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
						<li class="active">学员人数</li>
					</ol>
					
					<form>
						<div class="base_info_div fl">
							<div class="base_info">
								<label><strong>年度:</strong></label>
								<label>${trainPlanInfo.trainPlanYear}</label>
							</div>
							<div class="base_info">
								<label><strong>名称:</strong></label>
								<label>${trainPlanInfo.trainPlanName}</label>
							</div>
							<div class="base_info">
								<label><strong>时间:</strong></label>
								<label>${trainPlanInfo.startTime} 到  ${trainPlanInfo.endTime}</label>
							</div>
							
							<input type="hidden" value="${isFinish}" name="isFinish" id="isFinish">
							<!--这个没有可能还好一点-->
							<div class="fr">
								<a href="#" data-toggle="modal" data-target="#assigned_student_modal">合计:<strong>100</strong>人</a>
							</div>
						</div>
						
						<table id="train_plan_base_table" class="table table-bordered">
							<thead>
								<tr>
									<th style="width:10%">专业</th>
									<th style="width:30%">培训目的</th>
									<th style="width:30%">培训内容</th>
									<th style="width:5%">课时</th>
									<th style="width:10%">授课人</th>
									<th style="width:15%">学员人数</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach var="planItems" varStatus="status" items="${trainPlanItems}">
									<tr>
										<td id="${planItems.trainItemId}">${planItems.major}</td>
										<td>${planItems.trainPurpose}</td>
										<td>${planItems.trainContent}</td>
										<td>${planItems.classCount}</td>
										<td>${planItems.teacher}</td>
										<td class="unManage"><span data-toggle="modal" data-target="#assigned_student_modal">${nums[status.index]}</span></td>
									</tr>
								</c:forEach>
							
							</tbody>
						</table>
						
						
						<div class="modal fade" id="assigned_student_modal">
						    <div class="modal-dialog">
						    	<div class="modal-content">
						       		<div class="modal-header">
							        	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							        	<h4 class="modal-title">学员安排</h4>
						      		</div>
							        <div class="modal-body">
							        	<table class="table table-bordered" id="showStudent">
							        		<thead>
												<tr>
													<th>员工编号</th>
													<th>姓名</th>
													<th>部门</th>
													<th>职务</th>
													<th>入厂时间</th>
													<th>岗位</th>
												</tr>
											</thead>
											<tbody>
												<!-- <tr class="gaoliang">
													<td class="td_mark">001001</td>
													<td>张志刚</td>
													<td class="td_mark">发电一部 电气一班</td>
													<td>班长</td>
													<td>1999.8</td>
													<td></td>						
												</tr>
												<tr class="gaoliang">
													<td class="td_mark">001001</td>
													<td>张志刚</td>
													<td class="td_mark">发电一部 电气一班</td>
													<td>班长</td>
													<td>1999.8</td>
													<td></td>						
												</tr>
												<tr class="gaoliang">
													<td class="td_mark">001001</td>
													<td>张志刚</td>
													<td class="td_mark">发电一部 电气一班</td>
													<td>班长</td>
													<td>1999.8</td>
													<td></td>						
												</tr> -->
												
												
												
											</tbody>
							        	</table>
							        </div>
							      	<div class="modal-footer">
							      		<div class="fl">
							      			<span>已经安排学员<strong>30</strong>人</span>
							      		</div>
							      		<button type="button" class="btn btn-primary">导出</button>
							        	<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button> 	
							      	</div>
						    	</div><!-- /.modal-content -->
						    </div><!-- /.modal-dialog -->
						</div><!-- /.modal -->
					</form>
					
				</div>
			</div>
		</div>
		
	<jsp:include page="../footer.jsp"></jsp:include>
  </body>
</html>
