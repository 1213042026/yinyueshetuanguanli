<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/sys_jsp/base.jsp" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
		
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title><public:i18n key="system.name" module="system"></public:i18n></title>
		<script type="text/javascript" src="<%=basePath %>sys_js/admin/admin.js"></script>
	</head>
  
	<body>
		
		<div id="main-content">
			
			<div class="content-box">
				
				<div class="content-box-header">
					
					<h3><public:i18n key="function.register" module="admin"></public:i18n></h3>
					
					<ul class="content-box-tabs">
						<li><a href="#tab1" class="default-tab"><public:i18n key="function.register" module="admin"></public:i18n></a></li>
					</ul>
					
					<div class="clear"></div>
					
				</div> 
				
				<div class="content-box-content">
					
						<jsp:include page="/sys_jsp/notification.jsp"></jsp:include>
					
					<div class="tab-content default-tab" id="tab1">
					
						<form action="<%=basePath %>admin/admin_add.do" method="post" name="addForm" enctype="multipart/form-data">
							
							<fieldset> <!-- Set class to "column-left" or "column-right" on fieldsets to divide the form into columns -->
								<p>
									<label><public:i18n key="username" module="admin"></public:i18n></label>
										<input class="text-input small-input" value="${admin.username }" type="text" id="username" name="username" maxlength="20" rule="CHAR_M_120"/>
										<span id="username_errorMsg" class="input-notification png_bg"></span>
								</p>
								<p>
									<label><public:i18n key="password" module="admin"></public:i18n></label>
										<input class="text-input small-input"  value="${admin.password }" type="password" id="password" name="password" onblur="panduan()" rule="CHAR_M_120"/>
										<span id="password_errorMsg" class="input-notification png_bg"></span> <!-- Classes for input-notification: success, error, information, attention -->
								</p>
								<p>
									<label><public:i18n key="cpassword" module="admin"></public:i18n></label>
										<input class="text-input small-input" value="${admin.password }" type="password" id="cpassword" name="cpassword" rule="CHAR_M_120"/>
										<span id="cpassword_errorMsg" class="input-notification png_bg"></span> <!-- Classes for input-notification: success, error, information, attention -->
								</p>
								<p>
									<label>手机</label>
										<input class="text-input small-input" type="text"  value="${admin.telephone }" id="telephone" name="telephone" rule="INTE_M_11"/>
										<span id="telephone_errorMsg" class="input-notification png_bg"></span>
								</p>
								
								<p>
									<label>邮箱</label>
										<input class="text-input small-input" value="${admin.email }" type="text" id="email" name="email" rule="CHAR_M_20"/>
										<span id="email_errorMsg" class="input-notification png_bg"></span>
								</p>
								
								<%-- 
								<p>
									<label>学院</label>
										<input class="text-input small-input" type="text" id="college" name="college" rule="CHAR_M_120"/>
										<span id="college_errorMsg" class="input-notification png_bg"></span>
								</p>
								
								--%>
								<p>
									<label>昵称</label>
									<input class="text-input small-input" value="${admin.remark }" type="text" id="remark" name="remark" rule="CHAR_M_120"/>
										<span id="remark_errorMsg" class="input-notification png_bg"></span> 
								</p> 
								<p>
									<label>照片:<font color="red">(格式限定jpg,png,gif)</font></label>
										<s:file name="upload" label="选择文件:" onchange="selectFile(this)" ></s:file>
										<span id="upload_errorMsg" class="input-notification png_bg"></span>
								</p>
								<p>
								<font color="red">密保问题</font>
								</p>
								<p>
									<label>qq昵称</label>
									<input class="text-input small-input" value="${admin.qq }" type="text" id="qq" name="qq" />
										<span id="qq_errorMsg" class="input-notification png_bg"></span> 
								</p> 
								<div class="row tips">
				<input type="checkbox" id="checkBox">
				<label>
				我已阅读并同意
				<a href="#" target="_blank">隐私政策、服务条款</a><br />
				<textarea rows="" cols="" style="height:50px">
				请务必认真阅读和理解本《用户服务协议》（以下简称《协议》）中规定的所有权利和限制。除非您接受本《协议》条款，否则您无权注册、登录或使用本协议所涉及的相关服务。您一旦注册、登录、使用或以任何方式使用本《协议》所涉及的相关服务的行为将视为对本《协议》的接受，即表示您同意接受本《协议》各项条款的约束。如果您不同意本《协议》中的条款，请不要注册、登录或使用本《协议》相关服务。
				</textarea>
				
				</label>
			</div>
								
								<p>
								<p>
									<!-- 
									<label><public:i18n key="usertype" module="admin"></public:i18n></label>
									
									<input type="radio" name="usertype" checked="checked" value="1"/><public:i18n key="usertype.admin" module="system"></public:i18n>
									<input type="radio" name="usertype" value="2"/><public:i18n key="usertype.user" module="system"></public:i18n>
									 -->
									 <input type="hidden" name="usertype" value="2"/>
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

function selectFile(input) {
	 
    var fileName = input.value;
    if(fileName.length > 1 && fileName ) {       
        var ldot = fileName.lastIndexOf(".");
        var type = fileName.substring(ldot + 1);
         
        if(type != "jpg" && type != "gif" &&  type != "png") {
            alert("后缀名错误请重新输入");
            //清除当前所选文件
            input.outerHTML=input.outerHTML.replace(/(value=\").+\"/i,"$1\"");
        }       
    }
}



</script>
</body>
</html>
