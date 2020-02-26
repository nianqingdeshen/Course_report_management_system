<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h4>我的学生</h4>
	<s:iterator var="student" value="#session.studentMsg">
	<a href="${pageContext.request.contextPath}/user/getStudentMsg?courseID=<s:property value="#kc.courseID"/>">
	<s:property value="#student.sname"/></a>&ensp;
	
	</s:iterator>
</body>
</html>