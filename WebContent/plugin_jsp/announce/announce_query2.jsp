<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/sys_jsp/base.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">
		<head>
			<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
			<title><public:i18n key="system.name" module="system"></public:i18n></title>
			<script type="text/javascript" src="<%=basePath %>plugin_js/announce/announce.js"></script>

			<script type="text/javascript">
				function toPage(pageNum){
					var url = "announce/announce_query2.do?curPage="+pageNum;
					self.location.href = encodeURI(url);
				}
			</script>
		</head>

		<body>
			<div id="main-content">
			<div class="content-box">
			<div class="content-box-header">
				<h3><public:i18n key="function.manager" module="announce"></public:i18n></h3>
				<ul class="content-box-tabs">
					<li><a href="#tab1" class="default-tab"><public:i18n key="function.list" module="announce"></public:i18n></a></li>
				</ul>
				<div class="clear"></div>
			</div>
			<div class="content-box-content">
				<div class="tab-content default-tab" id="tab1">
				<jsp:include page="/sys_jsp/notification.jsp"></jsp:include>
					<form id="searchForm" name="searchForm" action="announce/announce_query2.do" method="post">
			<public:i18n key="title" module="announce"></public:i18n>: <input type="text" name="title"/>
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
								<th><public:i18n key="title" module="announce"></public:i18n></th>
								<th><public:i18n key="content" module="announce"></public:i18n></th>
								<th><public:i18n key="date" module="announce"></public:i18n></th>
								<!-- 
								<th><public:i18n key="level" module="announce"></public:i18n></th>
								<th><public:i18n key="sync" module="announce"></public:i18n></th>
										<th><public:i18n key="action" module="common"></public:i18n></th>
										 -->
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
										<!--<td><a href="<%=basePath %>announce/announce_detail.do?id=${record.id }" title="title">${record.id }</a></td>-->
											<td><a href="<%=basePath %>announce/announce_detail2.do?id=${record.id }" title="title">${record.title}</a></td>
											<td>${record.content}</td>
											<td>${record.date}</td>
											<!-- 
											<td>${record.level}</td>
											<td>${record.sync}</td>
										<td>
											<a style="cursor: pointer;" onclick="gotoEdit('<%=basePath %>announce/announce_edit.do?id=${record.id }')" title="Edit"><img src="resources/images/icons/pencil.png" alt="Edit" /></a>
											<a style="cursor: pointer;" onclick="actionDel('<%=basePath %>announce/announce_del.do?id=${record.id }')" title="Delete"><img src="resources/images/icons/cross.png" alt="Delete" /></a>
										</td>
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
