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
<title>成绩单</title>
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/bootstrap-theme.css" />
<link rel="stylesheet" href="css/train_result/markInfo.css" />
<script type="text/javascript" src="js/jquery-2.2.2.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/train_result/markInfo.js"></script>
</head>
<body>
	<jsp:include page="./nav.jsp" />
	<div class="container">
		<div id="baseInfo">
			<p>
				<span>基本信息</span>
			</p>
			<table id="baseInfo_table" class="table table-bordered">
				<tr>
					<td><strong>年度</strong></td>
					<td><input type="text" value="2015" name="" readonly="readonly" /></td>
					<td><strong>名称</strong></td>
					<td><input type="text" value="新员工入厂培训" name="" readonly="readonly" /></td>
					<td><strong>时间</strong></td>
					<td><input type="text" value="1月10日-1月20日" name="" readonly="readonly" /></td>
				</tr>
				<tr>
					<td><strong>专业</strong></td>
					<td><input type="text" value="电气" name="" readonly="readonly" /></td>
					<td><strong>课时</strong></td>
					<td><input type="text" value="3" name="" readonly="readonly" /></td>
					<td><strong>授课人</strong></td>
					<td><input type="text" value="吴浩" name="" readonly="readonly" /></td>
				</tr>
			</table>
		</div>
		<div id="resultInfo">
			<p>
				<span>考勤/成绩信息</span>
			</p>
			<div id="operateInfo">
				<p>
					<span>参加培训人数:</span><span id="numTip">30</span><span>人</span>
				</p>
				<p class="red">
					<span>总成绩=出勤成绩*</span><span id="attendance_ratio">20</span><span>%+考勤成绩*</span><span
						id="result_ratio">80</span><span>%</span>
				</p>
				<p>
					<button class="btn btn-default">导出</button>
					<button class="btn btn-default">打印</button>
				</p>
			</div>
			<table id="resultInfo_table" class="table table-bordered">
				<thead>
					<tr>
						<th>序号</th>
						<th>姓名</th>
						<th>部门</th>
						<th>出勤次数</th>
						<th>出勤成绩</th>
						<th>考试成绩</th>
						<th>总成绩</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>张志刚</td>
						<td>发电一部 电气1班</td>
						<td>10</td>
						<td>20</td>
						<td>80</td>
						<td>100</td>
					</tr>
					<tr>
						<td>2</td>
						<td>张志刚</td>
						<td>发电一部 电气1班</td>
						<td>10</td>
						<td>20</td>
						<td>80</td>
						<td>100</td>
					</tr>
					<tr>
						<td>3</td>
						<td>张志刚</td>
						<td>发电一部 电气1班</td>
						<td>10</td>
						<td>20</td>
						<td>80</td>
						<td>100</td>
					</tr>
					<tr>
						<td>4</td>
						<td>张志刚</td>
						<td>发电一部 电气1班</td>
						<td>10</td>
						<td>20</td>
						<td>80</td>
						<td>100</td>
					</tr>
					<tr>
						<td>5</td>
						<td>张志刚</td>
						<td>发电一部 电气1班</td>
						<td>10</td>
						<td>20</td>
						<td>80</td>
						<td>100</td>
					</tr>
					<tr>
						<td>6</td>
						<td>张志刚</td>
						<td>发电一部 电气1班</td>
						<td>10</td>
						<td>20</td>
						<td>80</td>
						<td>100</td>
					</tr>
					<tr>
						<td>7</td>
						<td>张志刚</td>
						<td>发电一部 电气1班</td>
						<td>10</td>
						<td>20</td>
						<td>80</td>
						<td>100</td>
					</tr>
					<tr>
						<td>8</td>
						<td>张志刚</td>
						<td>发电一部 电气1班</td>
						<td>10</td>
						<td>20</td>
						<td>80</td>
						<td>100</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>
