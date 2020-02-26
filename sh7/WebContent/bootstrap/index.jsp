<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="../styles/bootstrap.min.css">
<link rel="stylesheet" href="../styles/MyOwn.css">
<script src="../js/jquery-1.11.1.min.js"></script>
	<script src="../javascript/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
 <div class="col-md-12" style="height:50px;background-color: #dedef8;box-shadow: inset 1px -1px 1px #444, inset -1px 1px 1px #444;">

    <div align="center"><h3>欢迎来到课程设计报告管理系统</h3></div>
    </div>
    <div class="row">
        <div class="col-md-9" style="height:60px;background-color: #dedef8;box-shadow: inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
      		<br>
			<ul class="nav nav-tabs">
		  		<li ><a href="#">首页</a></li>
		  		<li><a href="kcMsg.jsp" target="iframe">我的课程</a></li>
			  	<li><a href="kcsjMsg.jsp" target="iframe">我的课程设计报告</a></li>
			  	<li><a href="studentMsg.jsp" target="iframe">个人信息</a></li>
			  	<li><a href="studentMsg.jsp" target="iframe">修改个人信息</a></li>
			  	<li><a href="studentStudentPassword.jsp" target="iframe">修改密码</a></li>
			</ul>
		</div>
		<div class="col-md-3" style="height:60px;background-color: #dedef8;box-shadow: inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
			<br>
			<h5><a href="#">欢迎您：<s:property value="#session.student.sname"/></a>
	  		<a href="#">退出</a></h5>
        </div>
        
        <div class="col-md-12" style="height:600px;background-color: #dedef8;box-shadow: inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
            
		<iframe  src="welcome.html" width="100%" height="100%"  name="iframe">   

		</iframe>
		
        </div>
        <div align="center" class="col-md-12" style="height:30px;background-color: #dedef8;box-shadow: inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
           ©2019 224 技术支持：河南城建学院  联系电话：15188886666
        </div>
    </div>
    </div>
    
   
</body>
</html>