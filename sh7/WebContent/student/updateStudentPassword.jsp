<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="pojo01.Student"%>
    <%@page import="pojo01.Class"%>
     <%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="../styles/bootstrap.min.css">
<link rel="stylesheet" href="../styles/MyOwn.css">
<script src="../js/jquery-1.11.1.min.js"></script>
<script src="../javascript/bootstrap.min.js"></script>
<body>
<%
Student student = (Student)session.getAttribute("student");
%>
	<form class="form-inline" role="form" action="${pageContext.request.contextPath }/user/upadteStudentPassword01">
	    <input type="hidden" name="classID" value="<%= student.getClass1().getClassID() %>"/>
	    <input type="hidden" name="sname" value="<%= student.getSname() %>"/>
	 <input type="hidden" name="studentID" value="<%= student.getStudentID() %>"/>
	    <input type="hidden" name="ssex" value="<%= student.getSsex() %>"/>
	    <input type="hidden" name="sage" value="<%= student.getSage() %>"/>
  	<div class="form-group">
  	<s:property value="#session.loginError"/><br/>
   		新&nbsp;密&nbsp;码：<input type="password" name="password"/>
  	</div>
  	<br><br>
  	<div class="form-group">
  		   确认密码：<input type="password" name="password01"/>
  		</div>
 	<br><br>
  	
  	<button type="submit" class="btn btn-default">提交</button>
</form>
</body>
</html>