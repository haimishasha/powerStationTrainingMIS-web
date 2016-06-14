/* by yachao*/
$(function() {
	var itemNum = $("#itemNum").val();
	$("#addNewLine").click(
			function() {
				var newLine = $("#itemTbody tr:first").clone(true);
				$("#itemTbody").append(newLine);
				$("#itemNum").val(++itemNum);
				$(newLine).find(".trainPlanItems").each(
						function() {
							var name = $(this).attr("name").replace(
									"trainPlanItems[0]",
									"trainPlanItems[" + (itemNum - 1) + "]");
							$(this).attr("name", name);
							$(this).val("");
						});
			});
	$("#deleteLastLine").click(function() {
		if ($("#itemTbody tr").length >= 2) {
			$("#itemTbody tr:last-child").remove();
			$("#itemNum").val(--itemNum);
		}
	});
});
/* end by yachao */

/* by yachao 2016/6/14 */
$(function() {
	$(".datepicker").datepicker({
		changeMonth : true,
		changeYear : true,
		dateFormat : 'yy-mm-dd'
	});
});
/* end by yachao */