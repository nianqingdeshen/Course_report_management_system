<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="pojo01.Teacher"%>
    <%@page import="pojo01.College"%>
     <%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Teacher teacher = (Teacher)session.getAttribute("teacher");
%>
<s:form action="/teacher/teacherPassword01">
	    <input type="hidden" name="teacherID" value="${teacher.teacherID}"/><br>
	    <input type="hidden" name="collegeID" value="${teacher.college.collegeID}"/><br>
	    <input type="hidden" name="teacherName" value="${teacher.teacherName}"/><br>
	    <input type="hidden" name="sex" value="${teacher.sex}"/><br>
	    <input type="hidden" name="age" value="${teacher.age}"/><br>
	  <s:property value="#session.loginError"/><br/>  
	    新密码：<input type="text" name="password"/><br/>
	   确认密码：<input type="text" name="password01"/><br/>
		<s:submit value="提交"/>
	</s:form>
</body>
</html>