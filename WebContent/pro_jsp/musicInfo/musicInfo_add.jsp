<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/sys_jsp/base.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">
		<head>
			<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
			<title><public:i18n key="system.name" module="system"></public:i18n></title>
			<script type="text/javascript" src="<%=basePath %>pro_js/musicInfo/musicInfo.js"></script>
		</head>

		<body>
			<div id="main-content">
			<div class="content-box">
			<div class="content-box-header">
				<h3><public:i18n key="function.add" module="musicInfo"></public:i18n></h3>
				<ul class="content-box-tabs">
					<li><a href="#tab1" class="default-tab"><public:i18n key="function.add" module="musicInfo"></public:i18n></a></li>
				</ul>
				<div class="clear"></div>
			</div>
			<div class="content-box-content">
			<jsp:include page="/sys_jsp/notification.jsp"></jsp:include>
				<div class="tab-content default-tab" id="tab1">
					<form action="<%=basePath %>musicInfo/musicInfo_add.do" method="post" name="mainform">
					<table>
					<tr>
					    <td>
						      <public:i18n key="types" module="musicInfo"></public:i18n>:
					    </td>
					    <td>
					        <select class="select" type="text" id="types" name="types">
						    <option value="翻唱">翻唱</option>
						    <option value="原创">原创</option>
					        </select>
						    <span id="types_errorMsg" class="input-notification png_bg"></span>
					    </td>
					</tr>
					<tr>
					    <td>
						    <public:i18n key="musicname" module="musicInfo"></public:i18n>:
					    </td>
					    <td>
						    <input class="text-input small-input" type="text" id="musicname" name="musicname" rule="CHAR_M_120"/>
						<span id="musicname_errorMsg" class="input-notification png_bg"></span>
					    </td>
					</tr>
					<tr>
					    <td>
						      <label><public:i18n key="content" module="musicInfo"></public:i18n></label>
					    </td>
					    <td>
						       <textarea class="text-input textarea wysiwyg" id="content" name="content" cols="60" rows="5" rule="CHAR_N_120"></textarea>
						       <span id="content_errorMsg" class="input-notification png_bg"></span>
					     </td>
					</tr>
					<tr>
					    <td>
						    <public:i18n key="file" module="musicInfo"></public:i18n>:
					    </td>
					    <td>
						    <input class="text-input small-input" type="text" id="file" name="file" rule="CHAR_M_120"/>
						<span id="file_errorMsg" class="input-notification png_bg"></span>
					    </td>
					</tr>
					<tr>
					    <td>
						    <public:i18n key="username" module="musicInfo"></public:i18n>:
					    </td>
					    <td>
						    <input class="text-input small-input" type="text" id="username" name="username" rule="CHAR_M"/>
						<span id="username_errorMsg" class="input-notification png_bg"></span>
					    </td>
					</tr>
					<tr>
					    <td>
						      <public:i18n key="renqi" module="musicInfo"></public:i18n>:
					    </td>
					    <td>
					        <select class="select" type="text" id="renqi" name="renqi">
						    <option value="否">否</option>
						    <option value="是">是</option>
					        </select>
						    <span id="renqi_errorMsg" class="input-notification png_bg"></span>
					    </td>
					</tr>
					<tr>
					    <td>
						      <public:i18n key="tuijian" module="musicInfo"></public:i18n>:
					    </td>
					    <td>
					        <select class="select" type="text" id="tuijian" name="tuijian">
						    <option value="否">否</option>
						    <option value="是">是</option>
					        </select>
						    <span id="tuijian_errorMsg" class="input-notification png_bg"></span>
					    </td>
					</tr>
					<tr>
					    <td>
						     <public:i18n key="date" module="musicInfo"></public:i18n>:
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
						      <public:i18n key="shenhe" module="musicInfo"></public:i18n>:
					    </td>
					    <td>
					        <select class="select" type="text" id="shenhe" name="shenhe">
						    <option value="提交">提交</option>
						    <option value="通过">通过</option>
						    <option value="未过">未过</option>
					        </select>
						    <span id="shenhe_errorMsg" class="input-notification png_bg"></span>
					    </td>
					</tr>
					<tr>
					    <td>
						      <label><public:i18n key="remark" module="musicInfo"></public:i18n></label>
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
	</html>
