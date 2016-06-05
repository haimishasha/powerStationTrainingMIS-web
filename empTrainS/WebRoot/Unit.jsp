<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'SearchUnit.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	    <script type="text/javascript" src="js/jquery-1.4.4.min.js"></script>
	<script type="text/javascript" src="js/jquery.ztree.core-3.5.js"></script>
	<link rel="stylesheet" type="text/css" media="screen" href="css/zTreeStyle/zTreeStyle.css" />  
	<script type="text/javascript">
		
	 $(document).ready(function(){
		$.ajax({
			type:"post",
			dataType:"json",
			url:"${pageContext.request.contextPath}/SearchTreeAction",
			success:function(treeList2){
			 var treeList3 = eval("("+treeList2+")"); 
			 /* alert(treeList3); */
			 var setting = {
						data: {
							simpleData: {
								enable: true,
								idKey: "unit_Id",
								pIdKey: "up_Unit_Id",
								rootPId: "0",
							},
							 key: {
								name: "unit_Name", 
								}
						},
						 callback: {
								onClick: onClick
							}
					};
					var zNodes = treeList3;
					
					/* 
					* 添加 树节点的 点击事件；
					*/
					var log, className = "dark";
					function onClick(event, treeId, treeNode, clickFlag) {
						var id = treeNode.unit_Id;
						$("#log").append("<li class='"+className+"'>"+id+"</li>");
						 $("#bt1").value = id;
						 document.getElementById("bt1").value = id;
					}		
						/* alert(document.getElementById("leb").value); */
					
					/* 生成树 */
					/* $(document).ready(function(){ */
						$.fn.zTree.init($("#treeDemo"), setting, zNodes);
					/* }); */
			 
			}

			});
	}); 
	
	
	$("#bt2").click(function(){
		alert("daowole");
		var a = document.getElementById("bt1").value;
		alert(a);
	})
	
	$("#bt2").click(function(){
		alert("daowole");
		var a = document.getElementById("bt1").value;
		alert(a);
				});
	</script>
  </head>
  
  <body>
           这里是查询部门界面
   <input type="button" value="查询" onclick="searchUnit()"/>
   <a href="./updateUnit.jsp">修改</a>
     <a href="./AddUnit.jsp">添加</a>
       <a href="./AddUnit.jsp">删除</a>
       
       　<div>  
　　  <!—这里的 ul 的class名字一定要是ztree,不能更改-->
        <ul id="treeDemo" class="ztree"></ul>  
    </div>  
    
    <li><p><span class="highlight_red">请尝试按下 <b>Ctrl</b> 或 <b>Cmd</b> 键进行 多节点选择 和 取消选择</span><br/>
					click log:<br/>
					<ul id="log" class="log"></ul></p>
				</li>
				<input type="text" value="zhangsan" id="bt1">
				<input type="button" value="点我" id="bt2">
  </body>
</html>
