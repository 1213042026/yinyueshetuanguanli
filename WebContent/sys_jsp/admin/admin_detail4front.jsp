<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/sys_jsp/base.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
		
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title><public:i18n key="system.name" module="system"></public:i18n></title>
		<script type="text/javascript" src="<%=basePath %>sys_js/admin/admin.js"></script>
		<script type="text/javascript" src="<%=basePath %>pro_js/musicInfo/musicInfo.js"></script>

			<!-- <script type="text/javascript">
				function toPage(pageNum){
					var url = "musicInfo/musicInfo_query4front.do?curPage="+pageNum;
					self.location.href = encodeURI(url);
				}
			</script> -->
	</head>
  
	<body>
		
		<div id="main-content">
			
			<div class="content-box">
				
				<div class="content-box-header">
					
					<h3><public:i18n key="function.detail" module="admin"></public:i18n></h3>
					
					<ul class="content-box-tabs">
						<li><a href="#tab1" class="default-tab"><public:i18n key="function.detail" module="admin"></public:i18n></a></li>
					</ul>
					
					<div class="clear"></div>
					
				</div> 
				
				<div class="content-box-content">
					
						<jsp:include page="/sys_jsp/notification.jsp"></jsp:include>
					
					<div class="tab-content default-tab" id="tab1">
					
						<form name="addForm">
							
							<fieldset> <!-- Set class to "column-left" or "column-right" on fieldsets to divide the form into columns -->
								<p>
									<label>社员名称： ${result.name }</label>
										
								</p>
								
								<p>
									<label>学号：${result.stunum }</label>
										
								</p>
								<p>
									<label>性别 :${result.sex }</label>
										
								</p>
								<p>
									<label>籍贯 :	${result.jg }</label>
									
								</p>
								
								<p>
									<label>学院：	${result.college }</label>
									
								</p>
									<p>
									<label>专业：	${result.zy}</label>
									
								</p>
									<p>
									<label>班级：${result.classinfo }</label>
										
								</p>
								<p>
									<label>爱好曲风：${result.qf }</label>
										
								</p>
									<p>
									<label>宿舍;${result.dormitory }</label>
										
								</p>
									<p>
									<label>入学时间:	${result.date }</label>
									
								</p>			
								
									<p>
									<label>备注:${result.remark }</label>
										
								</p>
							</fieldset>
							
							<div class="clear"></div>
							
						</form>
						
					</div> 
					
				</div> 
				
			</div>
		</div> 
		<div id="main-content">
			<div class="content-box">
			<div class="content-box-header">
				<h3>他的歌曲</h3>
				<ul class="content-box-tabs">
					<li>歌曲信息</li>
				</ul>
				<div class="clear"></div>
			</div>
			<div class="content-box-content">
				<div class="tab-content default-tab" id="tab1">
				
					<c:choose>
						<c:when test="${empty results}">
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
								<th><public:i18n key="renqi" module="musicInfo"></public:i18n></th>
								<th><public:i18n key="tuijian" module="musicInfo"></public:i18n></th>
								<th><public:i18n key="date" module="musicInfo"></public:i18n></th>
								<!-- 
								<th><public:i18n key="remark" module="musicInfo"></public:i18n></th>
								 -->
								
										
									</tr>
								</thead>
								<%-- <tfoot>
									<tr>
										<td colspan="12">
										
										<div class="pagination">${pageInfo }</div>
										<div class="clear"></div>
										</td>
									</tr>
								</tfoot> --%>
								<tbody>
								<c:forEach items="${results}" var="record">
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
											<td><a href="<%=basePath %>musicInfo/musicInfo_detail4front2.do?id=${record.id }" target="_blank" title="title">听歌</a></td>
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
