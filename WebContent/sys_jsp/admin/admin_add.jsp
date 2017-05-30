<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/sys_jsp/base.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
		
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title><public:i18n key="system.name" module="system"></public:i18n></title>
	</head>
  
	<body>
		
		<div id="main-content">
			
			<div class="content-box">
				
				<div class="content-box-header">
					
					<h3><public:i18n key="function.add" module="admin"></public:i18n></h3>
					
					<ul class="content-box-tabs">
						<li><a href="#tab1" class="default-tab"><public:i18n key="function.add" module="admin"></public:i18n></a></li>
					</ul>
					
					<div class="clear"></div>
					
				</div> 
				
				<div class="content-box-content">
					
						<jsp:include page="/sys_jsp/notification.jsp"></jsp:include>
					
					<div class="tab-content default-tab" id="tab1">
					
						<form action="<%=basePath %>admin/admin_add.do" method="post" name="addForm">
							
							<fieldset> <!-- Set class to "column-left" or "column-right" on fieldsets to divide the form into columns -->
								<p>
									<label><public:i18n key="username" module="admin"></public:i18n></label>
										<input class="text-input small-input" type="text" id="username" name="username" maxlength="20" rule="CHAR_M_120" onblur="panduan1()"/>
										<span id="username_errorMsg" class="input-notification png_bg"></span>
								</p>
								<p>
									<label><public:i18n key="password" module="admin"></public:i18n></label>
										<input class="text-input small-input" type="password" id="password" name="password" rule="CHAR_M_120" onblur="panduan()"/>
										<span id="password_errorMsg" class="input-notification png_bg"></span> <!-- Classes for input-notification: success, error, information, attention -->
								</p>
								<p>
									<label><public:i18n key="cpassword" module="admin"></public:i18n></label>
										<input class="text-input small-input" type="password" id="cpassword" name="cpassword" rule="CHAR_M_120" onblur="panduan3()"/>
										<span id="cpassword_errorMsg" class="input-notification png_bg"></span> <!-- Classes for input-notification: success, error, information, attention -->
								</p>
								<p>
									<label><public:i18n key="usertype" module="admin"></public:i18n></label>
									<input type="radio" name="usertype" checked="checked" value="1"/><public:i18n key="usertype.admin" module="system"></public:i18n>
									<!-- 
									<input type="radio" name="usertype" value="2"/><public:i18n key="usertype.user" module="system"></public:i18n>
									 -->
									
								</p>
								<p>
									<input class="button" type="button" name="adminAddButton" value='<public:i18n key="button.submit" module="common"></public:i18n>' />
								</p>
								
							</fieldset>
							
							<div class="clear"></div>
							
						</form>
						
					</div> 
					
				</div> 
				
			</div>
		</div> 
		<script type="text/javascript">

function panduan(){
	var a =$("#password").val();
	if(!((a.charAt(0)>='a' && a.charAt(0)<='z' )|| (a.charAt(0)>='A' && a.charAt(0)<='Z'))){
		alert("不是英文字母开头");
		$("#password").val("");
	}
	else if(a.length<6||a.length>20){
		alert("密码长度在6-20之间");
		$("#password").val("");
	}
	
}

function panduan1(){
	var b =$("#username").val();
	if(!((b.charAt(0)>='a' && b.charAt(0)<='z' )|| (b.charAt(0)>='A' && b.charAt(0)<='Z'))){
		alert("不是英文字母开头");
		$("#username").val("");
	}
	else if(b.length<6||b.length>20){
		alert("账号长度在6-20之间");
		$("#username").val("");
	}
}
function panduan3(){
	var a =$("#cpassword").val();
	var b =$("#password").val();
	
	if(a!=b){
		alert("两次密码不正确");
		var a =$("#cpassword").val("");
	}
}

$('form[name="addForm"] input[name="adminAddButton"]').click(function(){

	
		document.addForm.submit();
	
});
</script>	
</body>
</html>
