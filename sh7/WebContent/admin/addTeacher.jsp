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
<form action="${pageContext.request.contextPath}/teacher/addTeacher">
<s:textfield name="teacherID" label="工号"></s:textfield><br>
<s:textfield name="teacherName" label="姓名"></s:textfield><br>
<s:select name="collegeID" label="学院" list="#request.cList" listKey="collegeID" listValue="collegeName" value="0" headerKey="0" headerValue="--请选择学院--" ></s:select> 
<br><s:textfield name="sex" label="性别"></s:textfield><br>
<s:textfield name="age" label="年龄"></s:textfield><br>
<s:textfield name="password" label="默认密码"></s:textfield><br>
<s:submit value="提交"/>
</form>
</body>
</html>