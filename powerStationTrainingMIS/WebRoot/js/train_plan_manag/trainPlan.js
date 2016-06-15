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
	
});


	
	



