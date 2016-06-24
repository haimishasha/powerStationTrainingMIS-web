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
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>录入成绩</title>
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/bootstrap-theme.min.css" />
<link rel="stylesheet" href="css/train_result/entryMark.css" />
<script type="text/javascript" src="js/jquery-2.2.2.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/train_result/entryMark.js"></script>
<script>
	$(function() {

	});
</script>
</head>

	<body>
		<jsp:include page="./nav.jsp" />                                                                                                                       
		<div class="container">
			<div id="plan_content">
				<form id="planBaseInfo_form">
					<table id="planBaseInfo_table" class="table table-bordered">
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
				</form>
			</div>
			<div id="result_content">
				<div class="operate_info">
					<p><label>参加培训人数:</label><label id="person_num">30</label><label>人</label></p>
					<p id="setBtn"><label><strong>总成绩 = 出勤成绩*</strong><strong id="attendance_ratio">20</strong><strong>% + 考试成绩*</strong><strong>80</strong><strong>%</strong></label><button class="btn btn-default" data-toggle="modal" data-target="#result_ratio">设置</button></p>
					<p id="operateBtns"><button class="btn btn-default save">保存</button><button class="btn btn-default commit">提交</button></p>
				</div>
				<div id="result_ratio" class="modal fade">
					<form id="resultRation_form" action="" method="post">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<p><span>成绩比例设置</span></p>
								</div>
								<div class="modal-body">
									<p>总成绩=出勤情况<span class="red">x</span><input type="text" value="20" />%<span class="red">+</span>考试成绩<span class="red">x</span><input type="text" value="80" />%</p>
								</div>
								<div class="modal-footer">
									<button class="btn btn-default saveRatio">保存</button>
								</div>
							</div>
						</div>
					</form>
				</div>
				<div class="result_info">
					<form id="resultInfo_form">
						<table id="resultInfo_table" class="table table-bordered">
							<colgroup>
								<col width="6%" />
								<col width="12%" />
								<col width="20%" />
								<col width="12%" />
								<col width="20%" />
								<col width="20%" />
								<col width="12%" />
							</colgroup>
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
									<td><input type="text" value="" name="" /></td>
									<td><input type="text" value="" name="" /></td>
									<td><input type="text" value="" name="" readonly="readonly" /></td>
								</tr>
								<tr>
									<td>2</td>
									<td>张志刚</td>
									<td>发电一部 电气1班</td>
									<td>10</td>
									<td><input type="text" value="" name="" /></td>
									<td><input type="text" value="" name="" /></td>
									<td><input type="text" value="" name="" readonly="readonly" /></td>
								</tr>
								<tr>
									<td>3</td>
									<td>张志刚</td>
									<td>发电一部 电气1班</td>
									<td>10</td>
									<td><input type="text" value="" name="" /></td>
									<td><input type="text" value="" name="" /></td>
									<td><input type="text" value="" name="" readonly="" /></td>
								</tr>
								<tr>
									<td>4</td>
									<td>张志刚</td>
									<td>发电一部 电气1班</td>
									<td>10</td>
									<td><input type="text" value="" name="" /></td>
									<td><input type="text" value="" name="" /></td>
									<td><input type="text" value="" name="" readonly="" /></td>
								</tr>
								<tr>
									<td>5</td>
									<td>张志刚</td>
									<td>发电一部 电气1班</td>
									<td>10</td>
									<td><input type="text" value="" name="" /></td>
									<td><input type="text" value="" name="" /></td>
									<td><input type="text" value="" name="" readonly="" /></td>
								</tr>
								<tr>
									<td>6</td>
									<td>张志刚</td>
									<td>发电一部 电气1班</td>
									<td>10</td>
									<td><input type="text" value="" name="" /></td>
									<td><input type="text" value="" name="" /></td>
									<td><input type="text" value="" name="" readonly="" /></td>
								</tr>
							</tbody>
						</table>
					</form>
				</div>
			</div>
		</div>
		<jsp:include page="../footer.jsp" />
	</body>

</html>