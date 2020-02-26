<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="pojo01.Teacher"%>
    <%@page import="pojo01.College"%>
     <%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>老师修改个人信息</title>
</head>
<body>
<%
Teacher teacher = (Teacher)session.getAttribute("teacher");
%>
<s:form action="/teacher/teacherUpdate01">
	    <s:textfield label="姓名" name="teacherName"></s:textfield>
	    <s:radio name="sex" label="性别" list="#{'0':'男','1':'女' }" value="0"></s:radio>
	    <s:textfield label="年龄" name="age"></s:textfield>
	    <input type="hidden" name="password" value="${teacher.password}"/>
	     <input type="hidden" name="teacherID" value="${teacher.teacherID}"/>
	    <input type="hidden" name="collegeID" value="${teacher.college.collegeID}"/>
		<s:submit value="提交"/>
	</s:form>
</body>
</html>