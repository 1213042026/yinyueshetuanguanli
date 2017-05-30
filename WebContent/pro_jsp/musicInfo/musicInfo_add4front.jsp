<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/sys_jsp/base.jsp"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
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
				<h3><public:i18n key="function.add" module="musicInfo"></public:i18n></h3>
				<ul class="content-box-tabs">
					<li><a href="#tab1" class="default-tab"><public:i18n key="function.add" module="musicInfo"></public:i18n></a></li>
				</ul>
				<div class="clear"></div>
			</div>
			<div class="content-box-content">
			<jsp:include page="/sys_jsp/notification.jsp"></jsp:include>
				<div class="tab-content default-tab" id="tab1">
					<form action="<%=basePath %>musicInfo/musicInfo_add4front.do" method="post" name="mainform"  enctype="multipart/form-data">
					<table>
					<tr>
					    <td>
						      <public:i18n key="types" module="musicInfo"></public:i18n>:
					    </td>
					    <td>
					        <select class="select" type="text" id="types" name="types">
						    <option value="翻唱">翻唱</option>
						    <option value="原创">原创</option>
					        </select>
						    <span id="types_errorMsg" class="input-notification png_bg"></span>
					    </td>
					</tr>
					<tr>
					    <td>
						    <public:i18n key="musicname" module="musicInfo"></public:i18n>:
					    </td>
					    <td>
						    <input value="${e.musicname }" class="text-input small-input" type="text" id="musicname" name="musicname" rule="CHAR_M_120"/>
						<span id="musicname_errorMsg" class="input-notification png_bg"></span>
					    </td>
					</tr>
					<tr>
					    <td>
						    作词者:
					    </td>
					    <td>
						    <input class="text-input small-input" type="text" id="zuociz" name="zuociz" rule="CHAR_M_120" value="${e.zuociz }"/>
						<span id="zuociz_errorMsg" class="input-notification png_bg"></span>
					    </td>
					</tr>
					<tr>
					    <td>
						    编曲者:
					    </td>
					    <td>
						    <input class="text-input small-input" type="text" id="bqz"  value="${e.bqz }" name="bqz" rule="CHAR_M_120"/>
						<span id="bqz_errorMsg" class="input-notification png_bg"></span>
					    </td>
					</tr>
					<tr>
					    <td>
						   演唱者:
					    </td>
					    <td>
						    <input class="text-input small-input" type="text" id="ycz"  onblur="zidong()"  value="${e.ycz }" name="ycz" rule="CHAR_M_120"/>
						<span id="ycz_errorMsg" class="input-notification png_bg"></span>
					    </td>
					</tr>
					<tr>
					    <td>
						    原唱:
					    </td>
					    <td>
						    <input class="text-input small-input" type="text" id="yuanchang"  value="${e.yuanchang }" name="yuanchang" rule="CHAR_M_120"/>
						<span id="yuanchang_errorMsg" class="input-notification png_bg"></span>
					    </td>
					</tr>
					
					<tr>
					    <td>
						   爱好曲风:
					    </td>
					    <td>
						    <select name="qf">
						    <option></option>
						       <option value="1">R&B</option>
						       <option value="1">RAP</option>
						       <option value="1">儿歌</option>
						       <option value="1">红歌</option>
						       <option value="1">古风</option>
						       <option value="1">英文</option>
						    </select>
					    </td>
					</tr>
					
					<tr>
					    <td>
						      <label><public:i18n key="content" module="musicInfo"></public:i18n></label>
					    </td>
					    <td>
						       <textarea class="text-input textarea wysiwyg" id="content"  value="${e.content }" name="content" cols="60" rows="5" rule="CHAR_N_120"></textarea>
						       <span id="content_errorMsg" class="input-notification png_bg"></span>
					     </td>
					</tr>
					<tr>
					    <td>
						    <public:i18n key="file" module="musicInfo"></public:i18n>:<font color="red">(格式限定mp3,wmv)</font>
					    </td>
					    <td>
					       <s:file name="upload" label="选择文件:"  onchange="selectFile(this)" ></s:file>
										<span id="upload_errorMsg" class="input-notification png_bg"></span>
							<!-- 
							<input class="text-input small-input" type="text" id="file" name="file" rule="CHAR_M_120"/>
							 -->			
						    
						<span id="file_errorMsg" class="input-notification png_bg"></span>
					    </td>
					</tr>
					<tr>
					   <td colspan="2">
					      <a href=# onClick="javascript:window.open('<%=basePath %>im/b.png','','width=632,height=388,toolbar=no, status=no, menubar=no, resizable=yes, scrollbars=yes');return false;">
					        <img src="<%=basePath %>im/a.png" alt="a"/>
					      </a>
					   </td>
					   
					</tr>
					<!-- 
					<tr>
					    <td>
						    <public:i18n key="username" module="musicInfo"></public:i18n>:
					    </td>
					    <td>
						    <input class="text-input small-input" type="text" id="username" name="username" rule="CHAR_M"/>
						<span id="username_errorMsg" class="input-notification png_bg"></span>
					    </td>
					</tr>
					 -->
					
					<%-- <tr>
					    <td>
						      <public:i18n key="renqi" module="musicInfo"></public:i18n>:
					    </td>
					    <td>
					        <select class="select" type="text" id="renqi" name="renqi">
						    <option value="否">否</option>
						   <!-- 
						    <option value="是">是</option>
						    -->
						   
					        </select>
						    <span id="renqi_errorMsg" class="input-notification png_bg"></span>
					    </td>
					</tr> --%>
					<tr>
					    <td>
						      <public:i18n key="tuijian" module="musicInfo"></public:i18n>:
					    </td>
					    <td>
					        <select class="select" type="text" id="tuijian" name="tuijian">
						    <option value="否">否</option>
						  <!-- 
						    <option value="是">是</option>
						   -->
						  
					        </select>
						    <span id="tuijian_errorMsg" class="input-notification png_bg"></span>
					    </td>
					</tr>
					<tr>
					    <td>
						      <public:i18n key="shenhe" module="musicInfo"></public:i18n>:
					    </td>
					    <td>
					        <select class="select" type="text" id="shenhe" name="shenhe">
						    <!-- 
						    <option value="通过">通过</option>
						    <option value="未过">未过</option>
						     -->
						    <option value="提交">提交</option>
						    
					        </select>
						    <span id="shenhe_errorMsg" class="input-notification png_bg"></span>
					    </td>
					</tr>
					<tr>
					    <td>
						      <label><public:i18n key="remark" module="musicInfo"></public:i18n></label>
					    </td>
					    <td>
						       <textarea class="text-input textarea wysiwyg" id="remark" name="remark" cols="60" rows="5" rule="CHAR_N"></textarea>
						       <span id="remark_errorMsg" class="input-notification png_bg"></span>
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
				</div>
				</div>
				</div>
			</div>
		</body>
<script type="text/javascript">
		
		function zidong(){
			
			if($("#types").val()=="原创"){
				
				$("#yuanchang").val($("#ycz").val())
			}
		}
		
		
		function selectFile(input) {
			 
		    var fileName = input.value;
		    if(fileName.length > 1 && fileName ) {       
		        var ldot = fileName.lastIndexOf(".");
		        var type = fileName.substring(ldot + 1);
		         
		        if(type != "mp3" && type != "wmv") {
		            alert("后缀名错误请重新输入");
		            //清除当前所选文件
		            input.outerHTML=input.outerHTML.replace(/(value=\").+\"/i,"$1\"");
		        }       
		    }
		}
		</script>		
	</html>
