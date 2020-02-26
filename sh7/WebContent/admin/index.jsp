<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>管理员主页</title>

<link rel="stylesheet" href="../styles/bootstrap.min.css">
<link rel="stylesheet" href="../styles/MyOwn.css">
<script src="../js/jquery-1.11.1.min.js"></script>
<script src="../javascript/bootstrap.min.js"></script>
</head>
<body>
<div class="container"><br>
    <div class="row">
        <div class="col-md-9" style="background:url(../images/2.png); background-size: 100%;height:60px;">
      		<br>
			<ul class="nav nav-tabs">
		  		<li ><a style="color:black" href="welcome.html" target="iframe" >首页</a></li>
		  		<li><a  style="color:black" href="${pageContext.request.contextPath}/user/getTeacherList" 
		  				target="iframe">教师管理</a></li>
			  	<li><a style="color:black" href="${pageContext.request.contextPath}/user/getCourseList"
			  	 		target="iframe">课程管理</a></li>
			  	<li><a style="color:black" href="${pageContext.request.contextPath}/user/getStudentList" 
			  			target="iframe">学生管理</a></li>
			  	<li><a style="color:black" href="${pageContext.request.contextPath}/user/getClassList"
			  			target="iframe">班级管理</a></li>
			  	<li><a style="color:black" href="${pageContext.request.contextPath}/user/getKcsjList"
			  			target="iframe">课程设计报告管理</a></li>
			  	<li><a style="color:black" href="${pageContext.request.contextPath}/user/addStudentInput"
			  			target="iframe">添加学生信息</a></li>
			  	<li><a style="color:black" href="${pageContext.request.contextPath}/teacher/addTeacherInput"
			  			target="iframe">添加教师信息</a></li>
			</ul>
		</div>
		<div class="col-md-3" style="background:url(../images/3.png);background-size: 100%;height:60px;">
			<br>
			<h5><a style="color:black" href="#">欢迎您：admin</a>
	  		&ensp;<a style="color:black" href="${pageContext.request.contextPath}/exit1">退出</a> 
	  		&ensp;&ensp;&ensp;<a href="search.jsp" target="iframe">检索</a></h5>
	  		
        </div>
        
        <div class="col-md-12" style="background:url(../images/timg.jpg);background-size: 100%;height:600px;">
            
		<iframe  src="/sh7/welcome.html"  style="background-color:white;"width="100%" height="100%"name="iframe"scrolling="no">   

		</iframe>
		
        </div>
        <div align="center" class="col-md-12" style="height:30px;background-color: #dedef8;">
           ©2019 224 技术支持：河南城建学院  联系电话：15188886666
        </div>
    </div>
    </div>
</body>
</html>