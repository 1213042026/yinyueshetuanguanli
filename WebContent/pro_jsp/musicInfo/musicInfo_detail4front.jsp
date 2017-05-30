
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
			<h3><public:i18n key="function.detail" module="musicInfo"></public:i18n></h3>
			<ul class="content-box-tabs">
				<li><a href="#tab1" class="default-tab"><public:i18n key="function.detail" module="musicInfo"></public:i18n></a></li>
			</ul>
			<div class="clear"></div>
			</div>
			<div class="content-box-content">
			<jsp:include page="/sys_jsp/notification.jsp"></jsp:include>
			<div class="tab-content default-tab" id="tab1">
				<fieldset>
					<p>
						<b><public:i18n key="types" module="musicInfo"></public:i18n>:</b>
						<label>${result.types}</label>
					</p>
					<p>
						<b><public:i18n key="musicname" module="musicInfo"></public:i18n>:</b>
						<label>${result.musicname}</label>
					</p>
					<p>
						<b><public:i18n key="content" module="musicInfo"></public:i18n>:</b>
						<label>${result.content}</label>
					</p>
					
					<p>
						<b><public:i18n key="username" module="musicInfo"></public:i18n>:</b>
						<label>${result.username}</label>
					</p>
					<p>
						<b><public:i18n key="renqi" module="musicInfo"></public:i18n>:</b>
						<label>${result.renqi}</label>
					</p>
					<p>
						<b><public:i18n key="tuijian" module="musicInfo"></public:i18n>:</b>
						<label>${result.tuijian}</label>
					</p>
					<p>
						<b><public:i18n key="date" module="musicInfo"></public:i18n>:</b>
						<label>${result.date}</label>
					</p>
					<p>
						<b><public:i18n key="shenhe" module="musicInfo"></public:i18n>:</b>
						<label>${result.shenhe}</label>
					</p>
					<p>
						<b><public:i18n key="remark" module="musicInfo"></public:i18n>:</b>
						<label>${result.remark}</label>
					</p>
							
							
							<c:forEach items="${result2}" var="record" varStatus="ind">
						
						<c:choose>
						<c:when test="${ind.index%2==0}">
						<div style="background-color:#f3f3f3;">
						</c:when>
						<c:otherwise>
						<div style="background-color:#FFFFFF">
						</c:otherwise>
						
						</c:choose>
							<p align="left">
								${record.pinglunname}:  ${record.content}
							</p>
							<p align="right">
								${ind.index+1}楼 --${record.date}
							</p>
						</div>
					</c:forEach>
					
					<%if(request.getSession().getAttribute("frontUsername") != null) { %>
						
					
					<form action="<%=basePath %>musicInfo/musicInfo_add4huifu.do" method="post" name="mainform">
					<input class="text-input small-input" type="hidden" id="id" name="id" rule="CHAR_M" value ="${result.id}"/>
					<table>
					
					<tr>
					    <td align="left" valign="top">
					    	
						      发表回复:
					    </td>
					    <td>
						       <textarea class="text-input textarea wysiwyg" id="content" name="content" cols="60" rows="5" rule="CHAR_M"></textarea>
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
							<%} %>	
				</fieldset>
				<div class="clear"></div>
			</div>
			</div>
			</div>
			</div>
		</body>
	</html>
