<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/sys_jsp/base.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">
		<head>
			<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
			<title><public:i18n key="system.name" module="system"></public:i18n></title>
			<script type="text/javascript" src="<%=basePath %>pro_js/collectMusic/collectMusic.js"></script>
		</head>

		<body>
			<div id="main-content">
			<div class="content-box">
			<div class="content-box-header">
				<h3><public:i18n key="function.add" module="collectMusic"></public:i18n></h3>
				<ul class="content-box-tabs">
					<li><a href="#tab1" class="default-tab"><public:i18n key="function.add" module="collectMusic"></public:i18n></a></li>
				</ul>
				<div class="clear"></div>
			</div>
			<div class="content-box-content">
			<jsp:include page="/sys_jsp/notification.jsp"></jsp:include>
				<div class="tab-content default-tab" id="tab1">
					<form action="<%=basePath %>collectMusic/collectMusic_add.do" method="post" name="mainform">
					<table>
					<tr>
					    <td>
						    <public:i18n key="stuname" module="collectMusic"></public:i18n>:
					    </td>
					    <td>
						    <input class="text-input small-input" type="text" id="stuname" name="stuname" rule="CHAR_M_120"/>
						<span id="stuname_errorMsg" class="input-notification png_bg"></span>
					    </td>
					</tr>
					<tr>
					    <td>
						      <public:i18n key="types" module="collectMusic"></public:i18n>:
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
						    <public:i18n key="musicname" module="collectMusic"></public:i18n>:
					    </td>
					    <td>
						    <input class="text-input small-input" type="text" id="musicname" name="musicname" rule="CHAR_M_120"/>
						<span id="musicname_errorMsg" class="input-notification png_bg"></span>
					    </td>
					</tr>
					<tr>
					    <td>
						    <public:i18n key="file" module="collectMusic"></public:i18n>:
					    </td>
					    <td>
						    <input class="text-input small-input" type="text" id="file" name="file" rule="CHAR_M_120"/>
						<span id="file_errorMsg" class="input-notification png_bg"></span>
					    </td>
					</tr>
					<tr>
					    <td>
						      <label><public:i18n key="content" module="collectMusic"></public:i18n></label>
					    </td>
					    <td>
						       <textarea class="text-input textarea wysiwyg" id="content" name="content" cols="60" rows="5" rule="CHAR_N_120"></textarea>
						       <span id="content_errorMsg" class="input-notification png_bg"></span>
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
