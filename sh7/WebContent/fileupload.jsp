<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String courseID=request.getParameter("courseID");
session.setAttribute("courseID", courseID);
out.print("接收到:"+courseID);
%>
<s:property value="#session.student.studentID"/>
<s:property value="#session.student.class1.classID"/>

<s:form  action="fileupload" method="post"
		enctype="multipart/form-data">
		<s:file name="file" label="文件上传" />
		<s:submit value="上传" />
	</s:form>
	
<form action="">
<input type="text" value="<s:property value="#session.student.studentID"/>">
<input type="text" value="<s:property value="#session.student.class1.classID"/>">
文件名：${filename}
</form>
</body>
</html>