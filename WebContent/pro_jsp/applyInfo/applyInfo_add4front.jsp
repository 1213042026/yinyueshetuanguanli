<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/sys_jsp/base.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">
		<head>
			<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
			<title><public:i18n key="system.name" module="system"></public:i18n></title>
			<script type="text/javascript" src="<%=basePath %>pro_js/applyInfo/applyInfo.js"></script>
		</head>

		<body>
			<div id="main-content">
			<div class="content-box">
			<div class="content-box-header">
				<h3>加入社团申请</h3>
				<ul class="content-box-tabs">
					<li>加入社团申请</li>
				</ul>
				<div class="clear"></div>
			</div>
			<div class="content-box-content">
			<jsp:include page="/sys_jsp/notification.jsp"></jsp:include>
				<div class="tab-content default-tab" id="tab1">
					<form action="<%=basePath %>applyInfo/applyInfo_add4front.do" method="post" name="mainform" onsubmit="return panduan()">
					<table>
					<!-- 
					
					<tr>
					    <td>
						    <public:i18n key="stuname" module="applyInfo"></public:i18n>:
					    </td>
					    <td>
						    <input class="text-input small-input" type="text" id="stuname" name="stuname" rule="CHAR_M_120"/>
						<span id="stuname_errorMsg" class="input-notification png_bg"></span>
					    </td>
					</tr> -->
					
					<tr>
					    <td>
						      <public:i18n key="status" module="applyInfo"></public:i18n>:
					    </td>
					    <td>
					        <select class="select" type="text" id="status" name="status">
						    <option value="提交申请">提交申请</option>
						    <!-- 
						    <option value="审核通过">审核通过</option>
						    <option value="审核未过">审核未过</option>
						     -->
						    
					        </select>
						    <span id="status_errorMsg" class="input-notification png_bg"></span>
					    </td>
					</tr>
					<tr>
					    <td>
						    <public:i18n key="stunum" module="applyInfo"></public:i18n>:
					    </td>
					    <td>
						    <input class="text-input small-input" type="text" id="stunum" name="stunum" rule="CHAR_M_120"/>
						<span id="stunum_errorMsg" class="input-notification png_bg"></span>
					    </td>
					</tr>
					
						<tr>
					    <td>
						    姓名:
					    </td>
					    <td>
						    <input class="text-input small-input" type="text" id="name" name="name"  required rule="CHAR_M_120"/>
						<span id="name_errorMsg" class="input-notification png_bg"></span>
					    </td>
					</tr>
					
						<tr>
					    <td>性别
						    :
					    </td>
					    <td>
						    <select name="sex" id="sex" >
						       <option></option>
						       <option value="男">男</option>
						       <option value="女">女</option>
						    </select>
						    <span id="sex_errorMsg" class="input-notification png_bg"></span>
					    </td>
					</tr>
					
					
						<tr>
					    <td>
						    籍贯:
					    </td>
					    <td>
						    <input class="text-input small-input" type="text" id="jg" name="jg" rule="CHAR_j_120"/>
						<span id="jg_errorMsg" class="input-notification png_bg"></span>
					    </td>
					</tr>
					<tr>
					<td>
						    学院:
					    </td>
					<td>
					    <select name="college" id="colleage">
					           <option></option>
						       <option value="设计学院">设计学院</option>
						       <option value="管理学院">管理学院</option>
						       <option value="信息科学学院">信息科学学院</option>
						       <option value="土木工程学院">土木工程学院</option>
						       <option value="人文学院">人文学院</option>
						       <option value="法学院">法学院</option>
						    </select>
						    <span id="colleage_errorMsg" class="input-notification png_bg"></span>
					</td>
					<tr>
					<td>
						    部门:
					    </td>
					<td>
					    <select name="bumen" id="bumen">
					           <option></option>
						       <option value="办公室">办公室</option>
						       <option value="宣传部">宣传部</option>
						       <option value="外联部">外联部</option>
						       <option value="实践部">实践部</option>
						       <option value="咨询部">咨询部</option>
						    </select>
						    <span id="colleage_errorMsg" class="input-notification png_bg"></span>
					</td>
					</tr>
					</tr>
						<tr>
					    <td>
						    专业:
					    </td>
					    <td>
						    <input class="text-input small-input" type="text" id="zy" name="zy" rule="CHAR_M_120"/>
						<span id="name_errorMsg" class="input-notification png_bg"></span>
					    </td>
					</tr>
					
						<tr>
					    <td>
						   爱好曲风:
					    </td>
					    <td>
						    <select name="qf">
						    <option></option>
						       <option value="1">R&B</option>
						       <option value="1">RAP</option>
						       <option value="1">儿歌</option>
						       <option value="1">红歌</option>
						       <option value="1">古风</option>
						       <option value="1">英文</option>
						    </select>
					    </td>
					</tr>
					
					
					<tr>
					    <td>
						    <public:i18n key="classinfo" module="applyInfo"></public:i18n>:
					    </td>
					    <td>
						    <input class="text-input small-input" type="text" id="classinfo" name="classinfo" rule="CHAR_M_120"/>
						<span id="classinfo_errorMsg" class="input-notification png_bg"></span>
					    </td>
					</tr>
					<tr>
					    <td>
						    <public:i18n key="dormitory" module="applyInfo"></public:i18n>:
					    </td>
					    <td>
						    <input class="text-input small-input" type="text" id="dormitory" name="dormitory" rule="CHAR_M_120"/>
						<span id="dormitory_errorMsg" class="input-notification png_bg"></span>
					    </td>
					</tr>
					<tr>
					    <td>
						     <public:i18n key="date" module="applyInfo"></public:i18n>:
					    </td>
					    <td>
						      <input class="text-input small-input" type="text" id="date" name="date" rule="DATE_M" readonly="readonly"/>
						     <script>
							$("#date").datepicker({dateFormat:'yy-mm-dd'}); 
						    </script>
						     <span id="date_errorMsg" class="input-notification png_bg"></span>
					    </td>
					</tr>
					<tr>
					    <td>
						      <label><public:i18n key="content" module="applyInfo"></public:i18n></label>
					    </td>
					    <td>
						       <textarea class="text-input textarea wysiwyg" id="content" name="content" cols="60" rows="5" rule="CHAR_N"></textarea>
						       <span id="content_errorMsg" class="input-notification png_bg"></span>
					     </td>
					</tr>
					<tr>
					    <td>
						      <label><public:i18n key="remark" module="applyInfo"></public:i18n></label>
					    </td>
					    <td>
						       <textarea class="text-input textarea wysiwyg" id="remark" name="remark" cols="60" rows="5" rule="CHAR_N"></textarea>
						       <span id="remark_errorMsg" class="input-notification png_bg"></span>
					     </td>
					</tr>
					<tr>
					    <td>
					    </td>
					    <td>
							<input class="button" type="button" name="submitButton" value='<public:i18n key="button.submit" module="common"></public:i18n>' />
					    </td>
					 </tr>
					</table>
					<div class="clear"></div>
					</form>
				</div>
				</div>
				</div>
			</div>
		</body>
		 <script type="text/javascript">
		 
		 	function panduan(){
		 		if($("#name").val()=="" && $("#stunum")==""){
		 			alert("学号姓名不能为空");
		 			return false;
		 		}
		 		return true;
		 	}
		 </script>
	</html>
