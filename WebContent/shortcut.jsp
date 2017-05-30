<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.base.common.util.Const"%>
<%@ include file="sys_jsp/base.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
		
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		
		<title><public:i18n key="system.name" module="system"></public:i18n></title>
	</head>
  
	<body>
		
		<div id="main-content"> <!-- Main Content Section with everything -->
			
			<noscript> <!-- Show a notification if the user has disabled javascript -->
				<div class="notification error png_bg">
					<div>
						Javascript is disabled or is not supported by your browser. Please <a href="http://browsehappy.com/" title="Upgrade to a better browser">upgrade</a> your browser or <a href="http://www.google.com/support/bin/answer.py?answer=23852" title="Enable Javascript in your browser">enable</a> Javascript to navigate the interface properly.
					Download From <a href="http://www.exet.tk">exet.tk</a></div>
				</div>
			</noscript>
			
			<!-- Page Head -->
			<h2><public:i18n key="index.welcome.info" module="system"></public:i18n>&nbsp;<public:i18n key="system.name" module="system"></public:i18n></h2>
			<p id="page-intro">
			<!-- 
			What would you like to do?
			 -->
			
			<font style="font-family: serif; font-size: 12px;">
			&nbsp;&nbsp;&nbsp;&nbsp;个人原创音乐网站用于展示本人及身边音乐大学及编曲爱好朋友们的原创作品及商业作品。目前网站成立3年，不断有新的小伙伴前来合作原创音乐作品。同时提供网络各种免费教学资料帮助对音乐制作感兴趣的小伙伴们成就梦想。希望在新的一年里共同进步，创造出更多受众的原创音乐。迷音Los音乐团队，成立于2013年6月29日，由妤诺发起并联合多个艺术院校毕业生创建的的网络音乐团队。风格多样化，汇集了全国各地的音乐爱好者，并不断有喜爱原创音乐的朋友加入，力求打造一个深受大家喜爱的原创音乐团队。
			</font>
			
			</p>
			
			<ul class="shortcut-buttons-set">
				<!-- 
				<li><a class="shortcut-button" href="<%=basePath %>sys_jsp/shortcut/shortcut_add.jsp"><span>
					<img src="resources/images/icons/pencil_48.png" alt="icon" /><br />
					<public:i18n key="add.shortcut" module="system"></public:i18n>
				</span></a></li>
				<li><a class="shortcut-button" href="<%=basePath %>shortcut/shortcut_query.do"><span>
					<img src="resources/images/icons/paper_content_pencil_48.png" alt="icon" /><br />
					<public:i18n key="manager.shortcut" module="system"></public:i18n>
				</span></a></li>
				
				<public:shortcut></public:shortcut>
				 -->
			</ul><!-- End .shortcut-buttons-set -->
		</div> <!-- End #main-content -->
		
</body>
</html>
