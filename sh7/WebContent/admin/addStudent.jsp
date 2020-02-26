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
<s:form action="/user/addStudent">
<s:textfield name="studentID" label="学号"></s:textfield>
<s:textfield name="sname" label="姓名"></s:textfield>
<s:select name="classID" label="班级" list="#request.cList" listKey="classID" listValue="className" value="0" headerKey="0" headerValue="--请选择班级--" ></s:select> 
<s:textfield name="ssex" label="性别"></s:textfield>
<s:textfield name="sage" label="年龄"></s:textfield>
<s:textfield name="password" label="默认密码"></s:textfield>
<s:submit value="提交"/>
</s:form>
</body>
</html>