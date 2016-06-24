<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <base href="<%=basePath%>">
  <title>Document</title>
        <link rel="stylesheet" href="css/bootstrap.min.css" />
		<script src="js/datetimepicker/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		 <script src="js/datetimepicker/jquery.datetimepicker.js"></script>
  <script src="js/datetimepicker/jquery.datetimepicker.full.js"></script>
		<link rel="stylesheet" type="text/css" href="css/datetimepicker/jquery.datetimepicker.css"/>
		
  <style>
  .row{

    margin-bottom:30px;
  }
  .row .input-group{
    margin-bottom:5px;
  }
  </style>
 
 
  <script>
  $(function(){
  $('.datetimepicker').datetimepicker({
    dayOfWeekStart : 1,
    lang:'en',
    disabledDates:['1986/01/08','1986/01/09','1986/01/10'],
    startDate:  '2016/01/05'
    });
  $('.datetimepicker').datetimepicker({value:'2015/04/15 05:03',step:10});
 /*  
  $('#datetimepicker2').datetimepicker({
	    dayOfWeekStart : 1,
	    lang:'en',
	    disabledDates:['1986/01/08','1986/01/09','1986/01/10'],
	    startDate:  '2016/01/05'
	    });
	  $('#datetimepicker2').datetimepicker({value:'2015/04/15 05:03',step:10});*/
  }); 
  </script>
</head>
<body>
   <jsp:include page="../nav.jsp" />
  <div class="container">
     
        <div class="row">
            <div class="col-lg-6 col-md-6 col-xs-12">
                <div class="input-group">
                  <label for="year" class="input-group-addon">年度</label>
                  <select class="form-control" name="">
                      <option>${trainPlanYear}</option>
                    <!--   <option value="0">2014</option>
                      <option value="1">2013</option>
                      <option value="2">2012</option>
                      <option value="3">2011</option> -->
                  </select>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-xs-12">
                <div class="input-group">
                  <label for="Planyear" class="input-group-addon">培训计划名称</label>
                  <select class="form-control" name="Plantype">
                      <option >${trainPlanName}</option>
                     <!--  <option value="0">中层管理人员培训</option>
                      <option value="1">班组长培训</option> -->
                  </select>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-xs-12">
                <div class="input-group">
                  <label for="" class="input-group-addon">时间</label>
                  <input type="text" class="form-control" value="${trainTime }">
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-xs-12">
                <div class="input-group">
                  <label for="major" class="input-group-addon">&nbsp;培&nbsp;训&nbsp;专&nbsp;业&nbsp;&nbsp;&nbsp;</label>
                  <select class="form-control" name="major" class="form-control">
                    <option >${major }</option>
                    <!-- <option value="0">汽机</option>
                    <option value="1">锅炉</option>
                    <option value="2">化水</option>
                    <option value="3">燃运</option> -->
                  </select>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-xs-12">
                <div class="input-group">
                  <label for="coursetime" class="input-group-addon">课时</label>
                  <input type="text" name="coursetime" class="form-control" value="${trainPlanItem.classCount }">
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-xs-12">
                <div class="input-group">
                  <label for="teacher" class="input-group-addon">&nbsp;&nbsp;授&nbsp;&nbsp;课&nbsp;&nbsp;人&nbsp;&nbsp;&nbsp;&nbsp;</label>
                  <input type="text" name="teacher" class="form-control" value="${trainPlanItem.teacher}">
                </div>
            </div>
        </div>
        <form action="SaveAttendRecord.action" method="post" >
         
          <table  class="table table-bordered table-hover table-responsive">
				<tr>
					<th>序号</th>
					<th>学员姓名</th>
					<th>上课时间</th>
					<th>到课时间</th>
					<th>考勤情况</th>
				</tr>
				<!-- 循环得到所有学员的名字 -->
				<c:forEach var="staffName" varStatus="status" items="${nameList}">
					<tr>
						<td><c:out value="${status.index+1}"></c:out></td> 
						<td> ${staffName.staffName}<input type="hidden"
							name="attendRecordList[${status.index}].staffId" value="${staffName.staffId}"/>
							<input type="hidden"
							name="attendRecordList[${status.index}].trainItemId" value="${trainPlanItem.trainItemId}"/>
							
						</td>
						<td style="text-align:center"><input type="text"
							class="datetimepicker" name="attendRecordList[${status.index}].startTime"></td>
						<td style="text-align:center"><input type="text"
							class="datetimepicker" name="attendRecordList[${status.index}].arriveTime"></td>
						<td><select name="attendRecordList[${status.index}].attendStatus" id="myselect">
								<option>出勤</option>
								<option>缺勤</option>
								<option>迟到</option>
						</select></td>


					</tr>
				</c:forEach>

			
          </table>
          <input type="submit" value="保存" class="btn btn-info"/>
    </form>
</div>
<jsp:include page="../footer.jsp" />
</body>
</html>

