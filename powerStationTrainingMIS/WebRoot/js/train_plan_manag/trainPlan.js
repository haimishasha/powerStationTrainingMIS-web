/**
 * @郭飞 
 * @日期 2015-6-12
 * 实现保存事件的action
 */


$(document).ready(function () {
	$("#updatePlan").click(function () {
		
		if($('input[name="trainPlanId"]').prop("checked")){		    
				var Id=document.getElementById("myCheckBox").value;  
				
		     }	
		  window.location="ToUpdateAction?trainPlanId="+Id;
	})
	$("#deletePlan2").click(function(){
		window.alert("ssss");
		if($('input[name="trainPlanId"]').prop("checked")){		    
			var Id=document.getElementById("myCheckBox").value;  
			window.alert(Id);
	     }	
	  window.location="DeletePlanAction?trainPlanId="+Id;
		
	});
	
	$("input[type=reset]").trigger("click");
	
	
	/* ---------------------------------丁------------6.25----------------------------- */
	
	$('.planNum').click(function () {
		
		var isFinish = $(this).siblings("td:eq(6)").text();
		var trainPlanId = $(this).siblings("td:eq(1)").attr("id");
		window.location.href="toCheckManage?trainPlanId="+trainPlanId+"&isFinish="+isFinish+"";
		
		
		
	});
	
	
	/* ---------------------------------丁------------6.25----------------------------- */
	
});


	
	



