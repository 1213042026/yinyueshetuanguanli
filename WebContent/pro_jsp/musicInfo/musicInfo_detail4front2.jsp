<!DOCTYPE>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/sys_jsp/base.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">
		<head>
			<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
			<title><public:i18n key="system.name" module="system"></public:i18n></title>
			<script type="text/javascript" src="<%=basePath %>pro_js/musicInfo/musicInfo.js"></script>
		</head>
<script type="text/javascript">
function goPlay(musicUrl){
		if(musicUrl != null && musicUrl != ""){
			var html = "";
			if(navigator.userAgent.indexOf("Chrome")){
				html = '<audio src="attachment/'+ prefix + musicUrl +'" type="audio/mp3" autoplay=”autoplay” hidden="true"></audio>';
			}else if(navigator.appName.indexOf("Opera")!=-1){
				html = '<embed src="attachment/mp3/'+ prefix + musicUrl + '" type="audio/mpeg" loop="false"></embed>'+
						'}else{' +
						'<embed src="attachment/mp3/'+ prefix + musicUrl + '" type="audio/mp3" hidden="true" loop="false" mastersound></embed>' +
						'} ';
			}else{
				html = '<object data="attachment/mp3/'+ prefix + musicUrl +'" type="application/x-oleobject" width="0" height="0">' +
				   	   '<param name="src" value="attachment/mp3/'+ prefix + musicUrl + '">' + 
				       '<param name="autostart" value="1">'+
				       '<param name="playcount" value="infinite">'+
				       '</object>';
			}
			document.getElementById("playDIV").innerHTML=html;
		}
		
	}
</script>
		<body>
			<div id="main-content">
			<div class="content-box">
			<div class="content-box-header">
			<h3>在线听歌</h3>
			<ul class="content-box-tabs">
				<li></li>
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
						<b>作曲者:</b>
						<label>${result.bqz}</label>
					</p>
					<p>
						<b>作词者:</b>
						<label>${result.zuociz}</label>
					</p>
					<p>
						<b>演唱者:</b>
						<label>${result.ycz}</label>
					</p>
					<audio controls autoplay="autoplay">
   					 <source src="<%=basePath %>attachment/${result.file}" />
					</audio>
					
					
<!-- 
						<audio src="<%=basePath %>attachment/${result.file}" type="audio/mp3" autoplay="autoplay"></audio>
 -->

					
					
					<p>
						<b><public:i18n key="content" module="musicInfo"></public:i18n>:</b>
						<label>${result.content}</label>
					</p>
					
				</fieldset>
				<div class="clear"></div>
			</div>
			</div>
			</div>
			</div>
		</body>
	</html>
