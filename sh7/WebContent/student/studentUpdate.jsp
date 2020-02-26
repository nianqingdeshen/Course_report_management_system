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
	<form class="form-inline" role="form" action="${pageContext.request.contextPath }/user/studentUpdate01">
	
    	<input type="hidden" class="form-control"  name="studentID" value="<%= student.getStudentID() %>">
 
    	<input type="hidden" name="classID" value="<%= student.getClass1().getClassID() %>"/>
  	
  	<div class="form-group">
   		姓名：<input type="text" class="form-control" name="sname" placeholder="请输入姓名">
  	</div>
  	<br><br>
  		性别：<s:radio name="ssex" label="性别" list="#{'0':'男','1':'女' }" value="0"></s:radio>
 	<br><br>
  	<div class="form-group">
   		年龄： <input type="text" class="form-control" name="sage" placeholder="请输入年龄">
  	</div>
  	<div class="form-group">
    	<input type="hidden" name="password" value="<%= student.getPassword() %>"/>
  	</div>
  	<br>
  	<button type="submit" class="btn btn-default">提交</button>
</form>
</body>
</html>