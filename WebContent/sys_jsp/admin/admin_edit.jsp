<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/sys_jsp/base.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
		
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title><public:i18n key="system.name" module="system"></public:i18n></title>
	</head>
  
	<body>
		
		<div id="main-content">
			
			<div class="content-box">
				
				<div class="content-box-header">
					
					<h3><public:i18n key="function.edit" module="admin"></public:i18n></h3>
					
					<ul class="content-box-tabs">
						<li><a href="#tab1" class="default-tab"><public:i18n key="function.edit" module="admin"></public:i18n></a></li>
					</ul>
					
					<div class="clear"></div>
					
				</div> 
				
				<div class="content-box-content">
					
						<jsp:include page="/sys_jsp/notification.jsp"></jsp:include>
					
					<div class="tab-content default-tab" id="tab1">
					
						<form action="<%=basePath %>admin/admin_update.do" method="post" name="addForm">
							
							<fieldset> <!-- Set class to "column-left" or "column-right" on fieldsets to divide the form into columns -->
								<p>
									<label><public:i18n key="username" module="admin"></public:i18n></label>
										<input class="text-input small-input" type="text" id="username" name="username" rule="CHAR_M_120" value="${result.username }" readonly="readonly"/>
										<span id="username_errorMsg" class="input-notification png_bg"></span>
								</p>
								<p>
									<label><public:i18n key="usertype" module="admin"></public:i18n></label>
									<c:if test="${result.usertype == '1'}">
										<input type="radio" name="usertype" checked="checked" value="1"/>管理员
										<!-- 
										<input type="radio" name="usertype" value="2"/><public:i18n key="usertype.user" module="system"></public:i18n>
										 -->
										
									</c:if>
									<c:if test="${result.usertype == '2'}">
										<!--
										<input type="radio" name="usertype" value="1"/><public:i18n key="usertype.admin" module="system"></public:i18n> 
										 -->
										
										<input type="radio" name="usertype"  checked="checked" value="2"/>会员
									</c:if>
								</p>
								
								<p>
									<label>手机</label>
									${result.telephone }
										
										
								</p>
								
								<p>
									<label>邮箱</label>
									${result.email }
										
										
								</p>
								<p>
									<label>学院</label>
									${result.college }			
								</p>
								
								<p>
									<label>社团成员</label>
									
									<select class="select" type="text" id="isvip" name="isvip" value="${result.isvip }">
						    <option value="Y">是</option>
						    <option value="N">否</option>
						    
					        </select>
					         <script>
							//获得后台的值,把相应的select的option选为默认的值
							$(document).ready(function(){
							selectCheckPayStats("isvip","${result.isvip}");
							});
							//修改select的option默认显示项的方法
							function selectCheckPayStats(id,value)
							{
								//获得下拉列表的id
								var select = document.getElementById(id);
								//获得下拉列表的所有option
								var options = select.options;
								//循环获得对应的节点
								for(var i=0;i<options.length;i++)
								{
									//获得节点的值和后台传来的值进行比较
										if (options[i].value == value)
											{
												//如果当前节点与后台传来的值一致，则将当前节点设置为选中状态，并跳出循环
 												options[i].selected = true;
													break;
											}
								}
							} 
    						</script>
										
								</p>
								
								<p>
									
					         <script>
							//获得后台的值,把相应的select的option选为默认的值
							//修改select的option默认显示项的方法
							function selectCheckPayStats(id,value)
							{
								//获得下拉列表的id
								var select = document.getElementById(id);
								//获得下拉列表的所有option
								var options = select.options;
								//循环获得对应的节点
								for(var i=0;i<options.length;i++)
								{
									//获得节点的值和后台传来的值进行比较
										if (options[i].value == value)
											{
												//如果当前节点与后台传来的值一致，则将当前节点设置为选中状态，并跳出循环
 												options[i].selected = true;
													break;
											}
								}
							} 
    						</script>		
								</p>
								
								<p>
									<input class="button" type="button" name="adminAddButton" value='<public:i18n key="button.submit" module="common"></public:i18n>' />
									<input class="button" type="button" name="adminCancelButton" value='<public:i18n key="button.cancel" module="common"></public:i18n>' />
								</p>
								
							</fieldset>
							
							<div class="clear"></div>
							
						</form>
						
					</div> 
					
				</div> 
				
			</div>
		</div> 
		<script type="text/javascript">



$('form[name="addForm"] input[name="adminAddButton"]').click(function(){

	
		document.addForm.submit();
	
});
</script>			
</body>
</html>
