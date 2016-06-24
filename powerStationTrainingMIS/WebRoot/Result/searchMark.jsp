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
<meta charset="UTF-8">
<title>查询成绩</title>
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/bootstrap-theme.min.css" />
<link rel="stylesheet" href="css/train_result/searchMark.css" />
<script type="text/javascript" src="js/jquery-2.2.2.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/train_result/searchMark.js"></script>
</head>
	<body>
		<jsp:include page="./nav.jsp" />
		<div class="container">
			<div id="search_condition">
				<p><span>查询条件</span></p>
				<form id="search_form" action="" method="post">
					<div class="row">
						<div class="col-lg-4">
							<div class="input-group">
								<span class="input-group-addon">培训计划年度</span>
								<select name="" class="form-control">
									<option value="">2014</option>
									<option value="1">2015</option>
									<option value="2">2016</option>
									<option value="3">2017</option>
								</select> 
							</div>
						</div>
						<div class="col-lg-4">
							<div class="input-group">
								<span class="input-group-addon">培训专业</span>
								<select name="" class="form-control">
									<option value="">电气</option>
									<option value="1">汽机</option>
									<option value="2">锅炉</option>
									<option value="3">化水</option>
									<option value="4">燃运</option>
								</select>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-4">
							<div class="input-group">
								<span class="input-group-addon">培训计划类型</span>
								<select name="" class="form-control">
									<option value="">新员工入厂培训</option>
									<option value="1">中层管理人员培训</option>
									<option value="2">班组长培训</option>
								</select>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="input-group">
								<span class="input-group-addon">完成情况</span>
								<select name="" class="form-control">
									<option value="">未培训</option>
									<option value="1">培训中</option>
									<option value="2">已培训</option>
								</select>
							</div>
						</div>
						<div class="col-lg-3">
							<div class="input-group">
								<button class="btn btn-default searchBtn">查询</button>
							</div>
						</div>
					</div>
				</form>
			</div>
			<div id="countInfo">
				<p><span>共计:</span>&nbsp;&nbsp;<span id="numOfDoc" class="red">10</span><span class="red">条</span><span>信息</span></p>
			</div>
			<div id="planDetailInfo">
				<table id="detailInfo_table" class="table table-bordered">
					<thead>
						<tr>
							<th>序号</th>
							<th>年度</th>
							<th>培训计划名称</th>
							<th>培训类型</th>
							<th>培训专业</th>
							<th>培训时间</th>
							<th>完成情况</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>2015</td>
							<td>新员工入厂培训</td>
							<td>新员工入场培训</td>
							<td>电气 汽机 锅炉</td>
							<td>1月10日-1月20日</td>
							<td>已培训</td>
							<td><a href="Result/markInfo.jsp">查看成绩</a></td>
						</tr>
						<tr>
							<td>2</td>
							<td>2015</td>
							<td>新员工入厂培训</td>
							<td>新员工入场培训</td>
							<td>电气 汽机 锅炉</td>
							<td>1月10日-1月20日</td>
							<td>已培训</td>
							<td><a href="#">查看成绩</a></td>
						</tr>
						<tr>
							<td>3</td>
							<td>2015</td>
							<td>新员工入厂培训</td>
							<td>新员工入场培训</td>
							<td>电气 汽机 锅炉</td>
							<td>1月10日-1月20日</td>
							<td>已培训</td>
							<td><a href="#">查看成绩</a></td>
						</tr>
						<tr>
							<td>4</td>
							<td>2015</td>
							<td>新员工入厂培训</td>
							<td>新员工入场培训</td>
							<td>电气 汽机 锅炉</td>
							<td>1月10日-1月20日</td>
							<td>已培训</td>
							<td><a href="#">查看成绩</a></td>
						</tr>
						<tr>
							<td>5</td>
							<td>2015</td>
							<td>新员工入厂培训</td>
							<td>新员工入场培训</td>
							<td>电气 汽机 锅炉</td>
							<td>1月10日-1月20日</td>
							<td>已培训</td>
							<td><a href="#">查看成绩</a></td>
						</tr>
						<tr>
							<td>6</td>
							<td>2015</td>
							<td>新员工入厂培训</td>
							<td>新员工入场培训</td>
							<td>电气 汽机 锅炉</td>
							<td>1月10日-1月20日</td>
							<td>已培训</td>
							<td><a href="#">查看成绩</a></td>
						</tr>
						<tr>
							<td>7</td>
							<td>2015</td>
							<td>新员工入厂培训</td>
							<td>新员工入场培训</td>
							<td>电气 汽机 锅炉</td>
							<td>1月10日-1月20日</td>
							<td>已培训</td>
							<td><a href="#">查看成绩</a></td>
						</tr>
						<tr>
							<td>8</td>
							<td>2015</td>
							<td>新员工入厂培训</td>
							<td>新员工入场培训</td>
							<td>电气 汽机 锅炉</td>
							<td>1月10日-1月20日</td>
							<td>已培训</td>
							<td><a href="#">查看成绩</a></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div id="paging">
				<ul class="pagination pagination-lg">
					<li><a href="#">&laquo;</a></li>
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#">&raquo;</a></li>
				</ul>
			</div>				
		</div>
		<jsp:include page="../footer.jsp" />
	</body>

</html>
