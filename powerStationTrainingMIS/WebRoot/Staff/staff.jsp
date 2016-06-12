<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>" />
<meta charset="utf-8" />
<title>员工管理</title>
<link rel="stylesheet" type="text/css" media="screen"
	href="css/zTreeStyle/zTreeStyle.css" />
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/main2.css" />
<script type="text/javascript" src="js/jquery-2.2.2.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.ztree.core-3.5.js"></script>
<script type="text/javascript" src="js/staff.js"></script>
<script type="text/javascript" src="js/jquery.validate-1.13.1.js"></script>
<script type="text/javascript" src="js/student_info/student_info.js"></script>

</head>
<body>
	<jsp:include page="../nav.jsp"/>
	<div class="Mycontent">
		<div class="container">
			<div class="content_title">
				<!--<hr />-->
				<ol class="breadcrumb">
					<li><a href="#">电厂</a></li>
					<li><a href="#">学员管理</a></li>
					<li class="active">部门管理</li>
				</ol>
			</div>

			<form action="" method="post" style="border: 1px solid #EEEEEE;">
				<fieldset style="margin: 20px;">
					<legend>
						<span>查询条件</span>
					</legend>
					<div class="fl">
						<span>班组:</span> <input type="text" placeholder="..." />
					</div>
					<div class="fl">
						<span>员工姓名: </span> <input type="text" placeholder="..." />
					</div>
					<div class="fl">
						<span>员工编号:</span> <input type="text" placeholder="..." />
					</div>
					<input type="submit" value="查 询" class="fr" id="sele_sub" />
				</fieldset>
			</form>
			<!--select_form end-->

			<div class="dapartment_main">

				<div class="dapartment_left" style="border-right: 1px solid gray;">
					<fieldset>
						<legend>
							<span>部门</span>
						</legend>

						<!-- 添加部门的树 -->
						<ul id="treeDemo" class="ztree"></ul>
				</div>
				</fieldset>
			</div>
			<!--添加 修改 部门信息-->
			<div class="dapartment_right ">
				<div class="btn-group" role="group" aria-label="...">

					<button type="button" class="btn btn-default" data-toggle="modal"
						data-target="#staff_add_form">添 加</button>
					<button type="button" class="btn btn-default" id="unmodify"
						data-toggle="modal" data-target="#staff_change_form">修 改</button>
					<!--添加，修改弹出框-->
	<!--添加弹出框添加弹出框添加弹出框添加弹出框添加弹出框添加弹出框添加弹出框添加弹出框添加弹出框添加弹出框添加弹出框-->
					<div class="modal fade" id="staff_add_form">
						<div class="modal-dialog">
							<div class="modal-content">
								<form>
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
										<h4 class="modal-title">Modal t fitle</h4>
									</div>
									<div class="modal-body">

										<table cellpadding="2" style="border:#F2F2F2;line-height:40px">
											<tr>
												<td>姓名</td>
												<td><input type="text" class="form-control" name="staffName"
													id="staffName"> <span class='tishi'></span></td>

											</tr>
											<tr>
												<td>身份证号</td>
												<td><input type="text" class="form-control" id="cardId" name="cardId">
													<span class="card"></span></td>
											</tr>
											<tr>
												<td>出生年月</td>
												<td><input type="text" class="form-control" name="birthday"
													id="birthday"></td>
											</tr>
											<tr>
												<td>籍贯</td>
												<td><select class="form-control" style="width:250px"
													id="birthPlace">
														<option value="0">山西</option>
														<option value="1">河北</option>
														<option value="2">江苏</option>
														<option value="3">广东</option>
														<option value="4">四川</option>
												</select></td>
											</tr>
											<tr>
												<td>岗位</td>
												<td><select class="form-control" style="width:250px"
													id="job">
														<option value="0">1</option>
														<option value="1">1</option>
														<option value="2">1</option>
														<option value="3">1</option>
												</select></td>
											</tr>
											<tr>
												<td>职称</td>
												<td><input type="text" class="form-control" name="jobTitle"
													id="jobTitle"></td>
											</tr>
											<!-- <tr>
													<td>部门</td>
													<td><select class="form-control" style="width:250px"
														id="unitId">
															<option value="0">发电一部</option>
															<option value="1">发电二部</option>
															<option value="2">检修车间</option>
															<option value="3">锅炉车间</option>
															<option value="4">燃料车间</option>
													</select></td>
												</tr> -->
											<tr>
												<td>联系电话</td>
												<td><input type="text" class="form-control" name="telephone"
													id="telephone"></td>
											</tr>
											<tr>
												<td>参加工作时间</td>
												<td><input type="text" class="form-control" name="joinTime"
													id="joinTime"></td>
											</tr>
										</table>

									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">Close</button>
										<button type="button" class="btn btn-primary" id="addStaff" >Save
											changes</button>
										<input type="reset" style="display:none" />
										<!-- style="display:none;" -->
									</div>
								</form>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>



					<!-- /.modal -->
	<!--修改弹出框修改弹出框修改弹出框修改弹出框修改弹出框修改弹出框修改弹出框修改弹出框修改弹出框修改弹出框修改弹出框修改弹出框修改弹出框-->
					<div class="modal fade" id="staff_change_form">
						<div class="modal-dialog">
							<div class="modal-content">

								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title">Modal t fitle</h4>
								</div>
								<form>
									<div class="modal-body">

										<table cellpadding="2" style="border:#F2F2F2;line-height:40px">
											<tr>
												<td>姓名</td>
												<td><input type="text" class="form-control"
													id="staffName2" name="staffName" value=""> <span class='tishi'></span></td>

											</tr>
											<tr>
												<td>工号</td>
												<td><label class="form-control" id="staffId"></label></td>
											</tr>
											<tr>
												<td>出生年月</td>
												<td><input type="text" class="form-control"
													id="birthday2" value=""></td>
											</tr>
											<tr>
												<td>班组</td>
												<td><input type="text" class="form-control"
													id="unitName2" value=""></td>
											</tr>
											<tr>
												<td>岗位</td>
												<!-- <td><select class="form-control" style="width:250px"
														id="job">
															<option value="0">1</option>
															<option value="1">1</option>
															<option value="2">1</option>
															<option value="3">1</option>
													</select></td> -->
												<td><input type="text" class="form-control" id="job2" value=""></td>
											</tr>
										</table>

									</div>
								</form>
								<div class="modal-footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">Close</button>
									<button type="button" class="btn btn-primary" id="modifySave">Save
										changes</button>
								</div>
								<input type="reset" style="display:none;" />

							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->
					<button type="button" class="btn btn-default" id="delete">删
						除</button>
					<input type="hidden" id="hidden_UnitId" value=""> <input
						type="hidden" id="hidden_UnitName" value="">
				</div>
				<div>
					<div class="fl">
						<label class="btn">共 : <span>10条</span>信息
						</label>
					</div>
					<div class="fr">
						<button class="btn btn-default">导 出</button>
						<button class="btn btn-default">打 印</button>
					</div>
					<div class="clearfix"></div>
				</div>

				<from>
				<table border="" cellspacing="" cellpadding="" class="dap_table"
					id="dap_table">
					<thead>
						<tr>
							<th>序号</th>
							<th>姓名</th>
							<th>员工编号</th>
							<th>性别</th>
							<th>出生年月</th>
							<th>班组</th>
							<th>岗位</th>
							<th>选择</th>
						</tr>
					</thead>
					<tbody id="staff_tabody">
						<!--<tr>
										<td>1</td>
										<td></td>
										<td>001</td>
										<td>man</td>
										<td>1978-07-15</td>
										<td>发电一部 电气一班</td>
										<td>检修工</td>
										<td><input type="checkbox" /></td>
									</tr>-->
					</tbody>

				</table>
				</from>

				<nav>分页?!</nav>
			</div>
		</div>
		<!--dapartment_main end-->

		</div>
	</div>
	
	
	<!------------------------------------------------------------------------------------>
	<div class="Mycontent">
			<div class="container">
				<div class="content_title">
					<!--<hr />-->
					<ol class="breadcrumb">
						<li><a href="#">电厂</a></li>
						<li><a href="#">学员管理</a></li>
						<li class="active">部门管理</li>
					</ol>
				</div>							
				
				<form action="" method="post" style="border: 1px solid #EEEEEE;">
					<fieldset style="margin: 20px;">
						<legend><span>查询条件</span></legend>
						<div class="fl">
							<span>班组:</span>
							<input type="text" placeholder="..."/>
						</div>
						<div class="fl">
							<span>员工姓名: </span>
							<input type="text" placeholder="..."/>
						</div>
						<div class="fl">
							<span>员工编号:</span>
							<input type="text" placeholder="..." />
						</div>
						<input type="submit" value="查 询" class="fr" id="sele_sub"/>
					</fieldset>						
				</form><!--select_form end-->
				
				<div class="dapartment_main">					
					
					<div class="dapartment_left" style="border-right: 1px solid gray;">
						<fieldset>
							<legend><span>部门</span></legend>
							<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
																
								<div class="panel panel-default" id="create_one_staff">
									<div class="panel-heading" role="tab" id="headingOne_staff">
										<h4 class="panel-title">
					        			<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne_staff" aria-expanded="true" aria-controls="collapseOne_staff">
					         			太原第二热电厂
					       				</a>
					      				</h4>
									</div>
									<div id="collapseOne_staff" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne_staff">	
										<div class="panel-body">
											发电一部
										</div>
										<div class="panel-body">
											发电二部
										</div>
										<div class="panel-body">
											001001
										</div>
										<div class="panel-body">
											001001
										</div>
										<div class="panel-body">
											001001
										</div>
									</div>
								</div>
								
								
							</div>
						</fieldset>
					</div>
					<!--添加 修改 部门信息-->
					<div class="dapartment_right ">
						<div class="btn-group" role="group" aria-label="...">
							
							<button type="button" class="btn btn-default"  data-toggle="modal" data-target="#staff_add_form">添 加</button>
							<button type="button" class="btn btn-default" id="" data-toggle="modal" data-target="#staff_add_form">修 改</button>
							<!--添加，修改弹出框-->
							<!--添加弹出框-->				
							<div class="modal fade" id="staff_add_form">
							    <div class="modal-dialog">
							    	<form id="myform" name="myform" class="myform">
								    <div class="modal-content">
								    	
								        <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title">Modal t fitle</h4>
							            </div>
									    <div class="modal-body">
									        
									        	<table  cellpadding="2" style="border:#F2F2F2;line-height:40px">
										    		<tr>
										    			<td>姓名</td>
										    			<td>
										    				<input type="text" class="form-control" name="staffName" id="staffName">										    				
										    			</td>									    			
										    		</tr>
										    		<tr>
										    			<td>工号</td>
										    			<td><input type="text"  class="form-control" name="staffId" id="staffId">
										    				<span class="tishi"></span>
										    			</td>
										    		</tr>
										    		<tr>
										    			<td>身份证号</td>
										    			<td><input type="text"  class="form-control" id="cardId" name="cardId">
										    				<span class="tishi"></span>
										    			</td>
										    		</tr>
										    		<tr>
										    			<td>出生年月</td>
										    			<td><input type="text"  class="form-control" id="birthday" name="birthday">
										    			<span class="tishi"></span>
										    			</td>
										    		</tr>
										    		<tr>
										    			<td>籍贯</td>
										    			<td>
										    				<select  class="form-control" style="width:250px" id="birthPlace">
											    				<option value="0">山西</option>
											    				<option value="1">河北</option>
											    				<option value="2">江苏</option>
											    				<option value="3">广东</option>
											    				<option value="4">四川</option>
											    			</select>
										    			</td>
										    		</tr>
										    		<tr>
										    			<td>岗位</td>
										    			<td>
											    			<select  class="form-control" style="width:250px" id="job">
											    				<option value="0">1</option>
											    				<option value="1">1</option>
											    				<option value="2">1</option>
											    				<option value="3">1</option>
											    			</select>
										    			</td>
										    		</tr>
										    		<tr>
										    			<td>职称</td>
										    			<td><input type="text"  class="form-control" id="jobTitle" name="jobTitle">
										    			<span class="tishi"></span>
										    			
										    			</td>
										    		</tr>
										    		<tr>
										    			<td>部门</td>
										    			<td><select  class="form-control" style="width:250px" id="unitId">
											    				<option value="0">发电一部</option>
											    				<option value="1">发电二部</option>
											    				<option value="2">检修车间</option>
											    				<option value="3">锅炉车间</option>
											    				<option value="4">燃料车间</option>
											    			</select>
											    		</td>
										    		</tr>
										    		<tr>
										    			<td>联系电话</td>
										    			<td>
										    				<input type="text"  class="form-control" id="telephone" name="telephone">
										    				<span class="tishi"></span>
										    			</td>
										    		</tr>
										    		<tr>
										    			<td>参加工作时间</td>
										    			<td>
										    				<input type="text"  class="form-control" id="joinTime" name="joinTime">
										    				<span class="tishi"></span>
										    			</td>
										    		</tr>
									    		</table>									    										        
									        
								        </div>
								        <div class="modal-footer">
								        	<input type="submit" class="btn btn-default" value="Save change" />
									        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>									       
								        </div>
								      
								    </div><!-- /.modal-content -->
								    </form>
							    </div><!-- /.modal-dialog -->
							</div><!-- /.modal -->	
						<button type="button" class="btn btn-default" id="student_info_delect">删 除</button>
						</div>
						<div>
							<div class="fl">
								<label class="btn">共 : <span>10条</span>信息</label>								
							</div>
							<div class="fr">
								<a class="btn btn-default">导 出</a>
								<a class="btn btn-default">打 印</a>
							</div>
							<div class="clearfix"></div>
						</div>
						
						<from>
							<table border="" cellspacing="" cellpadding="" class="dap_table">
								<thead>
									<tr>
										<th>序号</th>
										<th>姓名</th>
										<th>员工编号</th>
										<th>性别</th>
										<th>出生年月</th>
										<th>班组</th>
										<th>岗位</th>
										<th><input type="checkbox" /> </th>
									</tr>
								</thead>
								<tbody id="staff_tabody">
									<tr>
										<td>1</td>
										<td></td>
										<td>001</td>
										<td>man</td>
										<td>1978-07-15</td>
										<td>发电一部 电气一班</td>
										<td>检修工</td>
										<td><input type="checkbox" name="student_info_check"/></td>
									</tr>
									<tr>
										<td>2</td>
										<td></td>
										<td>001</td>
										<td>man</td>
										<td>1978-07-15</td>
										<td>发电一部 电气一班</td>
										<td>检修工</td>
										<td><input type="checkbox" name="student_info_check"/></td>
									</tr>
								</tbody>
								
							</table>
						</from>
						
						<nav>
							分页?!
						</nav>
					</div>
				</div><!--dapartment_main end-->
				
				
			</div>
		</div>
		
<!------------------------------------------------------------------------------------------------->
	
	<jsp:include page="../footer.jsp"/>
	<script>
		$(document).ready(
				function() {
					$("#").click(
							function() {
								var max_line_num = $(
										"#staff_tabody tr:last-child")
										.children("td").html(); //获取最大的行数
								//判断当前处于列表的位置
								if (max_line_num == null) {
									max_line_num = 1;
								} else {
									max_line_num = parseInt(max_line_num);
									max_line_num += 1;
								}
								var $html = "<tr>" + "<td>" + max_line_num
										+ "</td>" + "<td>" + max_line_num
										+ "</td>" + "<td>" + max_line_num
										+ "</td>" + "<td>" + max_line_num
										+ "</td>" + "<td>" + max_line_num
										+ "</td>" + "<td>" + max_line_num
										+ "</td>" + "<td>" + max_line_num
										+ "</td>"
										+ "<td><input type='checkbox' /></td>"
										+ "</tr>";

								$($html).appendTo("#staff_tabody");
							})

				})
	</script>
</body>
</html>
