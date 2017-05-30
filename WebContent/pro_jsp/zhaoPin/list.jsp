<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
<table border="8">
<tr><td>参加名单</td></tr>
<tr><td>姓名</td><td>学院</td><td>专业</td><td>班级</td><td>宿舍</td><td>报名时间</td></tr>
<c:forEach items="${result }" var="re">
<tr>
<td>${re.name}</td>
<td>${re.college}</td>
<td>${re.zy}</td>
<td>${re.classinfo}</td>
<td>${re.dormitory}</td>
<td>${re.bmdate}</td>
</tr>
</c:forEach>
</table>
</div>
</body>
</html>