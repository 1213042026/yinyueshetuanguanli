function toPage(pageNum){
	var uName = $('form[name="searchForm"] input[name="username"]').val();
	var url = "admin/admin_query.do?curPage="+pageNum;
	self.location.href = encodeURI(url);
}

$(document).ready(function(){
	$('form[name="addForm"] input[name="username"]').blur(function(){
		var key = this.name+"_"+"errorMsg";
		var value = this.value;
		var   re =/^[A-Za-z]{1}[0-9A-Za-z]{5,20}$/;
		if(typeof value == "undefined" || value == null || ""==value) {
			$("#"+key).html("请填写该字段");
			$("#"+key).addClass("error");
			return false;
		}
		else if(!re.test(value)){
			$("#"+key).html("用户名为英文开头，6-20位！");
			$("#"+key).addClass("error");
			return false;
		}
		
		else {
			$("#"+key).removeClass("error");
		}
		$("#"+key).empty();
		$("#"+key).addClass("success");
	});
	$('form[name="addForm"] input[name="remark"]').blur(function(){
		var key = this.name+"_"+"errorMsg";
		var value = this.value;
		if(typeof value == "undefined" || value == null || ""==value) {
			$("#"+key).html("请填写该字段");
			$("#"+key).addClass("error");
			return false;
		} else {
			$("#"+key).removeClass("error");
		}
		$("#"+key).empty();
		$("#"+key).addClass("success");
	});
	
	$('form[name="addForm"] input[name="password"]').blur(function(){
		var key = this.name+"_"+"errorMsg";
		var value = this.value;
		if(typeof value == "undefined" || value == null || ""==value) {
			$("#"+key).html("请填写该字段");
			$("#"+key).addClass("error");
			return false;
		} else {
			$("#"+key).removeClass("error");
		}
		$("#"+key).empty();
		$("#"+key).addClass("success");
	});
	
	$('form[name="addForm"] input[name="email"]').blur(function(){
		var key = this.name+"_"+"errorMsg";
		var value = this.value;
		var  et=/^[A-Za-z0-9]+@{1}[A-Za-z0-9]+.{1}[A-Za-z0-9]+$/;
		if(typeof value == "undefined" || value == null || ""==value) {
			$("#"+key).html("请填写该字段");
			$("#"+key).addClass("error");
			return false;
		}else if(!et.test(value)){
			$("#"+key).html("邮箱格式错误！格式为xxx@xxx.com");
			$("#"+key).addClass("error");
			return false;
		} 
		
		else {
			$("#"+key).removeClass("error");
		}
		$("#"+key).empty();
		$("#"+key).addClass("success");
	});
	
	
		$('form[name="addForm"] input[name="telephone"]').blur(function(){
			var key = this.name+"_"+"errorMsg";
			var value = this.value;
			var   tel=/^[0-9]{11}$/;
			if(typeof value == "undefined" || value == null || ""==value) {
				$("#"+key).html("请填写该字段");
				$("#"+key).addClass("error");
				return false;
			} 
			else if(!tel.test(value)){
				$("#"+key).html("电话号码为11位数字");
				$("#"+key).addClass("error");
				return false;
			}
			
			else {
				$("#"+key).removeClass("error");
			}
			$("#"+key).empty();
			$("#"+key).addClass("success");
		});
	
	$('form[name="addForm"] input[name="cpassword"]').blur(function(){
		var key = this.name+"_"+"errorMsg";
		var value = this.value;
		if(typeof value == "undefined" || value == null || ""==value) {
			$("#"+key).html("请填写该字段");
			$("#"+key).addClass("error");
			return false;
		} else if(this.value != $('form[name="addForm"] input[name="password"]').val()) {
			$("#"+key).html("确认密码要与密码一致");
			$("#"+key).addClass("error");
			return false;
		} else {
			$("#"+key).removeClass("error");
		}
		$("#"+key).empty();
		$("#"+key).addClass("success");
	});
	
	$('form[name="addForm"] input[name="adminAddButton"]').click(function(){
		var hasError = false;
		var   re =/^[A-Za-z]{1}[0-9A-Za-z]{5,19}$/;
		$('form[name="addForm"] input[type="text"]').each(function(){
			var rule = $(this).attr("rule");
			hasError = checkInputTextHasError(this, rule);
		});
		$('form[name="addForm"] input[type="password"]').each(function(){
			var rule = $(this).attr("rule");
			hasError = checkInputTextHasError(this, rule);
		});
		var username=$('form[name="addForm"] input[name="username"]').val();
		if(!re.test(username)){
			$("#username_errorMsg").html("用户名为英文开头，6-20位！");
			$("#cpassword_errorMsg").addClass("error");
			hasError=true;
		}
		/*var username=$('form[name="addForm"] input[name="qq"]').val();
		if(""!=(username)){
			
		}else{
			$("#qq_errorMsg").addClass("error");
			hasError=true;
		}*/
		
		var telephone=$('form[name="addForm"] input[name="telephone"]').val();
		var   tel=/^[0-9]{11}$/;
		if(!tel.test(telephone)){
			$("#telephone_errorMsg").html("电话号码为11位数字！");
			$("#telephone_errorMsg").addClass("error");
			hasError=true;
		}
		var a=$('form[name="addForm"] input[name="password"]').val();
		var b=$('form[name="addForm"] input[name="cpassword"]').val();
		if(a!=b){
			alert("2次密码输入不相同，请修改！");
			$("#cpassword_errorMsg").html("确认密码要与密码一致");
			$("#cpassword_errorMsg").addClass("error");
			hasError=true;
		}
		if(!document.getElementById("checkBox").checked) {
			alert("请勾选协议！");
			hasError=true;
		}
		if(!hasError) {
			document.addForm.submit();
		}
	});
	
	$('form[name="changeForm"] input[name="commit"]').click(function(){
		var oldpassword = $("#oldpassword").val();
		var username = $("#username").val();
		var newPassword = $("#newpassword").val();
		var cPassword = $("#cpassword").val();
		
		if(isEmpty(oldpassword)){
			$("#oldpassword_errorMsg").html("原始密码不能为空");
			$("#oldpassword_errorMsg").addClass("error");
		} else {
			$.post("admin/admin_checkOldPassword.do",{
				username:username,oldpassword:oldpassword
			},function(data){
				if(typeof data != "undefined" && data != null){
					var ndRoot = data.getElementsByTagName("root")[0];
					var isSuccess = ndRoot.getAttribute("hasError");
					if("N" == isSuccess) {
						$("#oldpassword_errorMsg").removeClass("error");
						if(isEmpty(newPassword)) {
							$("#newpassword_errorMsg").html("新密码不能为空");
							$("#newpassword_errorMsg").addClass("error");
						} else if(isEmpty(cPassword)) {
							$("#cpassword_errorMsg").html("确认密码不能为空");
							$("#cpassword_errorMsg").addClass("error");
						} else if(newPassword != cPassword) {
							$("#cpassword_errorMsg").html("新密码与确认密码不一致");
							$("#cpassword_errorMsg").addClass("error");
						} 
						
						else {
							document.changeForm.submit();
						}
					}else {
						var ndRoot = data.getElementsByTagName("root")[0];
						var errMsg = ndRoot.getElementsByTagName("errMsg")[0];
						if(document.all){
							$("#oldpassword_errorMsg").html(errMsg.text);
							$("#oldpassword_errorMsg").addClass("error");
						}else {
							$("#oldpassword_errorMsg").html(errMsg.firstChild.nodeValue);
							$("#oldpassword_errorMsg").addClass("error");
						}
					}
				}
			});
			
		}
		
	});
	
	$('form[name="addForm"] input[name="adminCancelButton"]').click(function(){
		self.location.href = "admin/admin_query.do?username=";
	});
	
	$('#applyButton').click(function(){
		var actionName = $('select[name="dropdown"]').val();
		if("D" == actionName) {
			actionDels('admin/admin_dels.do');
		} else {
			alert("没有选择对应操作");
		}
	});
	
});