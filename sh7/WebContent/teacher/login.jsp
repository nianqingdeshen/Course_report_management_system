<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>老师登录页面</title>
<link rel="stylesheet" type="text/css" href="../styles/style.css">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/vector.js"></script>

</head>
<body>
<div class="center-container">
<div id="container" style="height:60%;width:60%">
	<div id="output" align="center">
		<div class="containerT " >
			<h1>欢迎使用课程设计报告管理系统</h1>
			<form  class="form" action="${pageContext.request.contextPath }/user/teacherLogin">
				<input type="text" placeholder="用户名" name="teacherID" value="admin">
				
				
				<s:property value="#session.loginError"/>
				<input type="password" placeholder="密码" name="password">
				<button type="submit" id="entry_btn">登录</button>
			</form>
		</div>
	</div>
</div></div>
<script type="text/javascript">
    $(function(){
        Victor("container", "output");   //登陆背景函数
        $("#entry_name").focus();
        $(document).keydown(function(event){
            if(event.keyCode==13){
                $("#entry_btn").click();
            }
        });
    });
</script>
<script type="text/javascript">

</script>
</body>
</html>