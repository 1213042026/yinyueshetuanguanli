<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script type="text/javascript">  
function returnUrlByTime(){
    var delay = document.getElementById("time").innerHTML;
    var t = setTimeout("returnUrlByTime()", 1000);
           if (delay > 0) {
               delay--;
               document.getElementById("time").innerHTML = delay;
           } else {
        clearTimeout(t); 
        window.location.href="http://localhost:8080/MusicWeb";
           }        
	
}
</script>  
  
</head>  

<body  onload="returnUrlByTime()">  
      
    <h3>更改密码成功！</h3>
      
   <p style="text-indent: 2em; margin-top: 30px;">
系统将在 <span id="time">3</span> 秒钟后自动跳转至登录页面，如果未能跳转，<a href="http://localhost:8080/MusicWeb" title="点击访问">请点击</a>。</p>
</body>  

</html>