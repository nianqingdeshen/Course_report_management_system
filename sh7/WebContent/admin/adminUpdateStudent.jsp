<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<s:form action="/user/adminUpdateStudent">
	    <input type="hidden" name="studentID" value="<%=request.getParameter("studentID") %>"/><br>
	    <input type="hidden" name="classID" value="<%=request.getParameter("classID") %>"/><br>
		<s:textfield name="sname" label="姓名"></s:textfield>
		<s:textfield name="ssex" label="性别"></s:textfield>
		<s:textfield name="sage" label="年龄"></s:textfield>
		<s:textfield name="password" label="默认密码"></s:textfield>
		<s:submit value="提交" />
	</s:form>
</body>
</html>