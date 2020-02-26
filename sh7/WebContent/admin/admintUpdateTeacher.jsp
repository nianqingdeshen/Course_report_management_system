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
<s:form action="/teacher/adminteachertUpdate01">
	    <input type="hidden" name="teacherID" value="<%=request.getParameter("teacherID") %>"/><br>
	    <input type="hidden" name="collegeID" value="<%= request.getParameter("collegeID") %>"/><br>
	    <s:textfield label="姓名" name="teacherName"></s:textfield>
	    <s:radio name="sex" label="性别" list="#{'0':'0','1':'1' }" value="0"></s:radio>
	    <s:textfield label="年龄" name="age"></s:textfield>
	    <s:textfield label="默认密码" name="password"></s:textfield>
		<s:submit value="提交"/>
	</s:form>
</body>
</html>