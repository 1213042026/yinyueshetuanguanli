<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/sys_jsp/base.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">
		<head>
			<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
			<title><public:i18n key="system.name" module="system"></public:i18n></title>
			<script type="text/javascript" src="<%=basePath %>pro_js/musicInfo/musicInfo.js"></script>

			<script type="text/javascript">
				function toPage(pageNum){
					var url = "musicInfo/musicInfo_query4front.do?curPage="+pageNum;
					self.location.href = encodeURI(url);
				}
			</script>
		</head>

		<body>
			<div id="main-content">
			<div class="content-box">
			<div class="content-box-header">
				<h3>我的歌曲</h3>
				<ul class="content-box-tabs">
					<li>歌曲信息</li>
				</ul>
				<div class="clear"></div>
			</div>
			<div class="content-box-content">
				<div class="tab-content default-tab" id="tab1">
				<jsp:include page="/sys_jsp/notification.jsp"></jsp:include>
					<form id="searchForm" name="searchForm" action="musicInfo/musicInfo_query4front.do" method="post">
			
			
			
			<public:i18n key="musicname" module="musicInfo"></public:i18n>: <input type="text" name="musicname"/>
			<!-- 
			<public:i18n key="username" module="musicInfo"></public:i18n>: <input type="text" name="username"/>
			 -->
			
			<!-- 
			<public:i18n key="types" module="musicInfo"></public:i18n>: <input type="text" name="types"/>
			<public:i18n key="renqi" module="musicInfo"></public:i18n>: <input type="text" name="renqi"/>
			<public:i18n key="tuijian" module="musicInfo"></public:i18n>: <input type="text" name="tuijian"/>
			<public:i18n key="shenhe" module="musicInfo"></public:i18n>: <input type="text" name="shenhe"/>
			 -->
			
						<input name="queryButton" type="submit" class="button" value='<public:i18n key="button.query" module="common"></public:i18n>' />
					</form>
					<c:choose>
						<c:when test="${empty result}">
						</c:when>
						<c:otherwise>
							<table>
								<thead>
									<tr>
										
								<th><public:i18n key="types" module="musicInfo"></public:i18n></th>
								<th><public:i18n key="musicname" module="musicInfo"></public:i18n></th>
								<!-- 
								<th><public:i18n key="content" module="musicInfo"></public:i18n></th>
								<th><public:i18n key="file" module="musicInfo"></public:i18n></th>
								 -->
								
								
								<%-- <th><public:i18n key="username" module="musicInfo"></public:i18n></th> --%>
								<th>人气值</th>
								<th><public:i18n key="tuijian" module="musicInfo"></public:i18n></th>
								<th><public:i18n key="date" module="musicInfo"></public:i18n></th>
								<th><public:i18n key="shenhe" module="musicInfo"></public:i18n></th>
								<!-- 
								<th><public:i18n key="remark" module="musicInfo"></public:i18n></th>
								 -->
								
										
									</tr>
								</thead>
								<tfoot>
									<tr>
										<td colspan="12">
										
										<div class="pagination">${pageInfo }</div>
										<div class="clear"></div>
										</td>
									</tr>
								</tfoot>
								<tbody>
								<c:forEach items="${result}" var="record">
									<tr>
										
										<!--<td><a href="<%=basePath %>musicInfo/musicInfo_detail.do?id=${record.id }" title="title">${record.id }</a></td>-->
											<td>${record.types}</td>
											<td><a href="<%=basePath %>musicInfo/musicInfo_detail.do?id=${record.id }" title="title">${record.musicname}</a></td>
											<!-- 
											<td><a href="<%=basePath %>musicInfo/musicInfo_detail.do?id=${record.id }" title="title">${record.musicname}</a></td>
											<td>${record.content}</td>
											<td>${record.file}</td>
											 -->
											
											
											<%-- <td>${record.username}</td> --%>
											<td>${record.renqi}</td>
											<td>${record.tuijian}</td>
											<td>${record.date}</td>
											<td>${record.shenhe}</td>
											
											<!-- 
											<td>${record.remark}</td>
											 -->
											
										
									</tr>
								</c:forEach>
								</tbody>
							</table>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</div>
	</body>
	</html>
