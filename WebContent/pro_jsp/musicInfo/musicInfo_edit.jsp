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
			<h3><public:i18n key="function.edit" module="musicInfo"></public:i18n></h3>
			<ul class="content-box-tabs">
				<li><a href="#tab1" class="default-tab"><public:i18n key="function.edit" module="musicInfo"></public:i18n></a></li>
			</ul>
			<div class="clear"></div>
			</div>
			<div class="content-box-content">
			<jsp:include page="/sys_jsp/notification.jsp"></jsp:include>
			<div class="tab-content default-tab" id="tab1">
			<form action="musicInfo/musicInfo_update.do" method="post" name="mainform">
				<table>
				<input type='hidden' name='id' value='${result.id }' />
					<tr>
					    <td>
						      <public:i18n key="types" module="musicInfo"></public:i18n>:
					    </td>
					    <td>
					        <select class="select" type="text" id="types" name="types" value="${result.types }">
						    <option value="翻唱">翻唱</option>
						    <option value="原创">原创</option>
					        </select>
					        
					         <script>
							//获得后台的值,把相应的select的option选为默认的值
							$(document).ready(function(){
							selectCheckPayStats("types","${result.types}");
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
						    <span id="types_errorMsg" class="input-notification png_bg"></span>
					    </td>
					</tr>
					<tr>
					   <td>
						   <public:i18n key="musicname" module="musicInfo"></public:i18n>:
					   </td>
					   <td>
						   ${result.musicname}
					   </td>
					</tr>
					
					<tr>
					   <td>
						   作词人
					   </td>
					   <td>
						   ${result.zuociz}
					   </td>
					</tr>
					<tr>
					   <td>
						  编曲者
					   </td>
					   <td>
						   ${result.bqz}
					   </td>
					</tr>
					<tr>
					   <td>
						  演唱者
					   </td>
					   <td>
						   ${result.ycz}
					   </td>
					</tr>
					<tr>
					   <td>
						   原唱
					   <td>
						   ${result.yuanchang}
					   </td>
					</tr>
					<tr>
					   <td>
						    <label><public:i18n key="content" module="musicInfo"></public:i18n></label>
					   </td>
					   <td>
						   <textarea class="text-input textarea wysiwyg" id="content" name="content" cols="60" rows="5" rule="CHAR_N_120">${result.content}</textarea>
						   <span id="content_errorMsg" class="input-notification png_bg"></span>
					   </td>
					</tr>
					<!-- 
					<tr>
					   <td>
						   <public:i18n key="file" module="musicInfo"></public:i18n>:
					   </td>
					   <td>
						   ${result.file}
					   </td>
					</tr>
					 -->
					
					<tr>
					   <td>
						   <public:i18n key="username" module="musicInfo"></public:i18n>:
					   </td>
					   <td>
						   ${result.username}
					   </td>
					</tr>
					<tr>
					    <td>
						      <public:i18n key="tuijian" module="musicInfo"></public:i18n>:
					    </td>
					    <td>
					        <select class="select" type="text" id="tuijian" name="tuijian" value="${result.tuijian }">
						    <option value="否">否</option>
						    <option value="是">是</option>
					        </select>
					        
					         <script>
							//获得后台的值,把相应的select的option选为默认的值
							$(document).ready(function(){
							selectCheckPayStats("tuijian","${result.tuijian}");
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
						    <span id="tuijian_errorMsg" class="input-notification png_bg"></span>
					    </td>
					</tr>
					<tr>
					   <td>
						   <public:i18n key="date" module="musicInfo"></public:i18n>:
					   </td>
					   <td>
						   <input class="text-input small-input" type="text" id="date" name="date" rule="DATE_M" value="${result.date }"/>
						   <script>
							$("#date").datepicker({dateFormat:'yy-mm-dd'}); 
						    </script>
						    <span id="date_errorMsg" class="input-notification png_bg"></span>
					   </td>
					</tr>
					<tr>
					    <td>
						      <public:i18n key="shenhe" module="musicInfo"></public:i18n>:
					    </td>
					    <td>
					        <select class="select" type="text" id="shenhe" name="shenhe" value="${result.shenhe }">
						    <option value="提交">提交</option>
						    <option value="通过">通过</option>
						    <option value="未过">未过</option>
					        </select>
					        
					          <script>
							//获得后台的值,把相应的select的option选为默认的值
							$(document).ready(function(){
							selectCheckPayStats("shenhe","${result.shenhe}");
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
						    <span id="shenhe_errorMsg" class="input-notification png_bg"></span>
					    </td>
					</tr>
					<tr>
					   <td>
						    <label><public:i18n key="remark" module="musicInfo"></public:i18n></label>
					   </td>
					   <td>
						   <textarea class="text-input textarea wysiwyg" id="remark" name="remark" cols="60" rows="5" rule="CHAR_N">${result.remark}</textarea>
						   <span id="remark_errorMsg" class="input-notification png_bg"></span>
					   </td>
					</tr>
					<tr>
					   <td>
								<input class="button" type="button" id="submitButton" name="submitButton" value='<public:i18n key="button.submit" module="common"></public:i18n>' />
					   </td>
					   <td>
								<input class="button" type="button" id="cancelButton" name="cancelButton" value='<public:i18n key="button.cancel" module="common"></public:i18n>' />
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
