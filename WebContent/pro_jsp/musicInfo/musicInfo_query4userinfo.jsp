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
					var url = "musicInfo/musicInfo_query4userinfo.do?curPage="+pageNum;
					self.location.href = encodeURI(url);
				}
			</script>
		</head>

		<body>
			<div id="main-content">
			<div class="content-box">
			<div class="content-box-header">
				<h3>社员信息</h3>
				<ul class="content-box-tabs">
					<li>社员信息</li>
				</ul>
				<div class="clear"></div>
			</div>
			<div class="content-box-content">
				<div class="tab-content default-tab" id="tab1">
				<jsp:include page="/sys_jsp/notification.jsp"></jsp:include>
				
				
					<c:choose>
						<c:when test="${empty result}">
						</c:when>
						<c:otherwise>
							<table>
								<tfoot>
									<tr>
										<td colspan="7">
										
										<div class="pagination">${pageInfo }</div>
										<div class="clear"></div>
										</td>
									</tr>
								</tfoot>
								<tbody>
						
									
									<c:forEach items="${result}" var="record">
										<tr>
										
										
											<td  width="150px" height="150px"><img style="width: 150px; height: 150px" src="<%=basePath %>attachment/${record.file}"/></td>
											<td style="text-align: left;vertical-align: top">

												<script type="text/javascript">
												$(function() {
												if ("${record.isgood}" == "Y") {
													$('#excellentSinger').show();
												}
												})

												</script>
											
											<h3> &nbsp; &nbsp;
												${record.stuname}&nbsp;社团成员  
												<span style="display:none;" id="excellentSinger">优秀歌手</span> 
												</h3>
											学院：${record.college}<br/>
											专业：${record.zy}<br/>
											班级：${record.classinfo}<br/>
											
											
											<a style="display: block;background: #ff4f4f;border-radius: 30px;width: 102px;height: 26px;font:12px/26px 'Microsoft Yahei';color: #fff;margin:3px auto 9px auto;text-align:center;" href="<%=basePath %>admin/admin_detail4front.do?username=${record.id}" title="title">
											
											我想认识
											</a>
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
