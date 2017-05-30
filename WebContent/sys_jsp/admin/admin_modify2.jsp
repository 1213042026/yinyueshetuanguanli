<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/sys_jsp/base.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'admin_add.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body id="page">
  <div id="contentWrap">
  	<div id="widget table-widget">
  	<br/><br/>
  	<div class="pageTitle">当前位置：修改个人信息</div>
  	<div class="pageInput" align="center">
  <form action="admin/admin_update2.do" method="post">
  <br/><br/><br/><br/><br/><br/><br/><br/><br/>
    <table id="normalT">
    	<tr>
    		<td>用&nbsp;户&nbsp;名：<br/><br/><br/></td>
    		<td>
    		<input type="hidden" name="username" value="${result.username }" readonly="true"/>
    		${result.username }
    		</td>
    	</tr>
    	
    	<tr>
    		<td>手机：<br/><br/><br/></td>
    		<td>
    			<input type="text" name="telephone" value="${result.telephone }"/>
    		</td>
    	</tr>
    	<tr>
    		<td>邮箱：<br/><br/><br/></td>
    		<td>
    			<input type="text" name="email" value="${result.email }"/>
    		</td>
    	</tr>
    	<tr>
    		<td>昵称：<br/><br/><br/></td>
    		<td>
    			<input type="text" name="remark" value="${result.remark }"/>
    		</td>
    	</tr>
    	<tr>
    		<td>照片：<br/><br/><br/></td>
    		<td>
    			<input type="text" name="remark" value="${result.file }"/>
    		</td>
    	</tr> 
    	<tr>
    		<td colspan="2">
    		<br/><br/><br/>
    			<input type="submit" class="bt" value="提交修改" />
    		</td>
    	</tr>
    </table>
    </form>
    </div></div></div>
  </body>
</html>
