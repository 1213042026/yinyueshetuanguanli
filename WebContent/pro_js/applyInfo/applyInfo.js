$(document).ready(function(){
		$('form[name="mainform"] input[name="submitButton"]').click(function(){
			var hasError = false;
			var hasError1 = false;
			var hasError2 = false;
			var hasError3=false;
			var hasError4=false;
 		$('form[name="mainform"] input[type="text"]').each(function(){
				var rule = $(this).attr("rule");
				if(checkInputTextHasError(this, rule)){
					hasError = true;
				}
			});
 		$('form[name="mainform"] input[type="radio"]').each(function(){
				var rule = $(this).attr("rule");
				if(checkRadioHasError(this, rule)) {
					hasError1 = true;
				}
			});
 		$('form[name="mainform"] input[type="checkbox"]').each(function(){
				var rule = $(this).attr("rule");
				if(checkCheckboxHasError(this, rule)) {
					hasError2 = true;
				}
			});
 		
 		
 		/*var  cs=$("#sex").val();
 		if(cs!='男'&&cs!='女'){
 			hasError3=true;
 			$("#sex_errorMsg").addClass("error");
 			$("#sex_errorMsg").html("请选择性别！");
 		}else{
 			$("#sex_errorMsg").removeClass("error");
 			$("#sex_errorMsg").empty();
 			$("#sex_errorMsg").addClass("success");
 		}
 		
 		var  jg=$("#jg").val();
 		if(jg.length<1){
 			hasError4=true;
 			$("#jg_errorMsg").addClass("error");
 			$("#jg_errorMsg").html("请填写籍贯！");
 		}else{
 			$("#jg_errorMsg").removeClass("error");
 			$("#jg_errorMsg").empty();
 			$("#jg_errorMsg").addClass("success");
 		}*/
 		
 		document.mainform.submit();
			if(!hasError && !hasError1 && !hasError2 && !hasError3) {
				document.mainform.submit();
			}
		});
		
		$('#cancelButton').click(function(){
			self.location.href = "applyInfo/applyInfo_query.do";
		});
		$('#applyButton').click(function(){
			var actionName = $('select[name="dropdown"]').val();
			if("D" == actionName) {
				actionDels('applyInfo/applyInfo_dels.do');
			} else {
				alert("没有选择对应操作");
			}
		});
});
function setParent(value) {
		opener.document.getElementById('uuid').value = value;
		window.opener = null;
		window.close();
}


