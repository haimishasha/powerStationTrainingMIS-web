<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
	<head>
		
		<base href="<%=basePath%>">
		<title>load</title>
		<script type="text/javascript" src="js/bootstrap.js" ></script>
		<link rel="stylesheet" href="css/bootstrap.css" />
		<link rel="stylesheet" href="css/load/load.css" />
		<script type="text/javascript" src="js/jquery-2.2.2.min.js" ></script>
		<script type="text/javascript" src="js/jquery.validate-1.13.1.js" ></script>
		<script type="text/javascript" src="js/load/load.js" ></script>
		
		<script type="text/javascript">
		$(document).ready(function(){
		
			$("#register").click(function(){
				var userName=document.getElementById("username").value;
				var password=document.getElementById("password").value;
				window.alert(userName);
				$.ajax({
					url :"registerAction.action",
					type :"post",
					dataType : "json",
					data:{"userName":userName,"password":password} ,
					success : function(status){
					//j得到后台处理的结果
					if(status){
						
						window.alert("注册成功,请重新登陆");
						
					}
				      
					},
					error: function() {
						alert("出错啦");
					}
				});
				
				
			});
						
		});
		
		</script>
	</head>
	<body>
		<div class="load_title">
			<div>
				<div>LOGO</div>
			</div>
		</div>
		<div class="load_hr"></div>
		<div class="load_body">
			<div class="load_body_left">
				<!--这一块应该是图片才是合适的  改变大小的时候改变图片大小-->
				<div class="word_place"><h1><i>电厂职工培训管理系统</i></h1></div>
				<div class="English_place"><h1><i>Plant staff training management system</i></h1></div>
				
				<div class="load_pic">
				</div>
			</div>
			<div class="load_body_right">			
				<form id="load_form" action="LoginAction" method="post">
					<div class="right_title">
						<h1 class="text-center">登录</h1>
						<div class="load_hr"></div>
					</div>
					
					<div class="right_body">
						<div class="box">
							<div class="input-group">
								<label class="input-group-addon label_item" for="username">用户</label>
								<input type="text" class="form-control" id="username" name="userName"/>			
								<span class="input-group-addon text_info"></span>
							</div>
						</div>
						<div class="box">
							<div class="input-group">
								<label class="input-group-addon label_item" for="password">密码</label>
								<input type="password" class="form-control" id="password" name="password"/>			
								<span class="input-group-addon text_info"></span>
							</div>
						</div>
						<div class="box text_center">
							<img src="#" style=""/>
							<a href="#" style="color: black;">看不清楚,换一张</a>
						</div>
						<div class="box">
							<div class="input-group">
								<label class="input-group-addon label_item">验证码</label>
								<input type="text" class="form-control" />			
								
							</div>
						</div>
					</div>
					<div class="right_bottom">
						<div class="load_hr"></div>
						<div class="text-center">
							<input type="submit" value="登录" id="load_save" class="btn btn-default" />
								    
							<input type="button" value="注册" id="register" class="btn btn-default" />
							
						</div>
					</div>
				
				</form>	
				
				
			</div>
		</div>
		<div class="load_hr"></div>
		<div class="load_bottom">
			<div class="text-center" style="padding-top: 50px;">
				<label>Copyright © 2015-2016 Tencent. All Rights Reserved.</label>
				<br />
				<label>电厂职工培训管理系统</label>
				<br />
				<label>技术支持联系方式：0351-6998011</label>
				<br />
				<label>版权所有 备案证号：晋ICP备050024564号</label>
			</div>
		</div>
	</body>
</html>
