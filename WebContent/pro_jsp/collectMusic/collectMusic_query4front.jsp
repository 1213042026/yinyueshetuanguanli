<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/sys_jsp/base.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">
		<head>
			<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
			<title><public:i18n key="system.name" module="system"></public:i18n></title>
			<script type="text/javascript" src="<%=basePath %>pro_js/collectMusic/collectMusic.js"></script>

			<script type="text/javascript">
				function toPage(pageNum){
					var url = "collectMusic/collectMusic_query4front.do?curPage="+pageNum;
					self.location.href = encodeURI(url);
				}
			</script>
		</head>

		<body>
			<div id="main-content">
			<div class="content-box">
			<div class="content-box-header">
				<h3>我的收藏</h3>
				<ul class="content-box-tabs">
					<li>收藏列表</li>
				</ul>
				<div class="clear"></div>
			</div>
			<div class="content-box-content">
				<div class="tab-content default-tab" id="tab1">
				<jsp:include page="/sys_jsp/notification.jsp"></jsp:include>
					<form id="searchForm" name="searchForm" action="collectMusic/collectMusic_query4front.do" method="post">
					<!-- 
			<public:i18n key="types" module="collectMusic"></public:i18n>: <input type="text" name="types"/>		
					 -->
			
			<public:i18n key="musicname" module="collectMusic"></public:i18n>: <input type="text" name="musicname"/>
						<input name="queryButton" type="submit" class="button" value='<public:i18n key="button.query" module="common"></public:i18n>' />
					</form>
					<c:choose>
						<c:when test="${empty result}">
						</c:when>
						<c:otherwise>
							<table>
								<thead>
									<tr>
									<!-- 
										<th><input class="check-all" type="checkbox" /></th>
									 -->
									
								<th><public:i18n key="types" module="collectMusic"></public:i18n></th>
								<th><public:i18n key="musicname" module="collectMusic"></public:i18n></th>
								<!-- 
								<th><public:i18n key="file" module="collectMusic"></public:i18n></th>
								 -->
								
								
									<!-- 
									<th><public:i18n key="content" module="collectMusic"></public:i18n></th>
										<th><public:i18n key="action" module="common"></public:i18n></th>
									 -->
									<th>操作</th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<td colspan="7">
										<!-- 
										<div class="bulk-actions align-left">
											<select name="dropdown">
												<option value=""><public:i18n key="action.select" module="common"></public:i18n></option>
												<option value="D"><public:i18n key="label.delete" module="common"></public:i18n></option>
											</select>
											<a class="button" id="applyButton" style="cursor: pointer;"><public:i18n key="button.apply" module="common"></public:i18n></a>
										</div>
										 -->
										
										<div class="pagination">${pageInfo }</div>
										<div class="clear"></div>
										</td>
									</tr>
								</tfoot>
								<tbody>
								<c:forEach items="${result}" var="record">
									<tr>
									<!-- 
										<td><input name="primaryKey" type="checkbox" value="${record.id }"/></td>
									 -->
									
										<!--<td><a href="<%=basePath %>collectMusic/collectMusic_detail.do?id=${record.id }" title="title">${record.id }</a></td>-->
											<td>${record.types}</td>
											<td>${record.musicname}</td>
											<!--
											<td><a href="<%=basePath %>collectMusic/collectMusic_detail.do?id=${record.id }" title="title">${record.musicname}</a></td> 
											<td>${record.file}</td>
											<td>${record.content}</td>
										<td>
											<a style="cursor: pointer;" onclick="gotoEdit('<%=basePath %>collectMusic/collectMusic_edit.do?id=${record.id }')" title="Edit"><img src="resources/images/icons/pencil.png" alt="Edit" /></a>
											<a style="cursor: pointer;" onclick="actionDel('<%=basePath %>collectMusic/collectMusic_del.do?id=${record.id }')" title="Delete"><img src="resources/images/icons/cross.png" alt="Delete" /></a>
										</td>
											 -->
											 <td>
											 <a href="<%=basePath %>musicInfo/musicInfo_detail4front2.do?id=${record.musicid }" target="_blank" title="title">听歌</a>
											 <a href="<%=basePath %>collectMusic/collectMusic_qx.do?id=${record.id }" title="Edit">取消收藏</a>
											 </td>
											 
											
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
