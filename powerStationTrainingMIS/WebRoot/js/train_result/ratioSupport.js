$(function() {
	/*------Begin selecting&setting result ratio of current train_item------*/
	$.ajax({
		url: "searchResultRatio.action",
		type: "post",
		data: {
			"trainResultRatio.trainItemId" : $("#trainItemId").val()
		},
		dataType: "json",
		success: function(trainResultRatio) {
			$("#attendance_ratio").text((trainResultRatio.attendanceRatio * 100));
			$("#exam_ratio").text((trainResultRatio.examRatio * 100));
		},
		error: function() {
			alert("An apporach to search result_ratio is fails!");
		}
	});
	/*------End selecting&setting result ratio of current train_item------*/
	
	/*------Begin modifying result ratio------*/
	$("#attendanceRatio").bind("input propertychange" ,function() {
		var aRatio = $("#attendanceRatio").val();
		var eRatio = 100 - aRatio;
		$("#examRatio").val(eRatio);
	});
	$("#examRatio").bind("input propertychange" ,function() {
		var eRatio = $("#examRatio").val();
		var aRatio = 100 - eRatio;
		$("#attendanceRatio").val(aRatio);
	});
	/*------End modifying result ratio------*/
	
	/*------Begin setting result ratio of modal------*/
	$(".setRatio").click(function() {
		$("#attendanceRatio").val($("#attendance_ratio").text());
		$("#examRatio").val($("#exam_ratio").text());
	});
	/*------End setting result ratio of modal------*/
	
	/*------Begin saving the result ratio modified------*/
	$(".saveRatio").click(function() {
		var params = $("#resultRatio_form").serialize();
		$.ajax({
			url : "updateResultRatio.action",
			type : "post",
			data : params,
			dataType : "json",
			success : function(trainResultRatio) {
				$("#trainItemId").attr("value", trainResultRatio.trainItemId);
				$("#attendance_ratio").text((trainResultRatio.attendanceRatio * 100));
				$("#exam_ratio").text((trainResultRatio.examRatio * 100));
				$("#result_ratio").modal("hide");
			},
			error : function() {
				alert("trainResultRatio修改失败!");
			}
		});
	});
	/*------End saving the result ratio modified------*/
});