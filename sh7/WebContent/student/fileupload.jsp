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
<s:form action="fileupload" method="post" 
     enctype="multipart/form-data">
		<s:file name="file" label="文件上传"/>
		<s:submit value="上传"/>
		 <input type="hidden" name="classID" value="<%=request.getParameter("classID") %>">
         <input type="hidden" name="courseID" value="<%=request.getParameter("courseID") %>">
         <input type="hidden" name="studentID" value="<%=request.getParameter("studentID") %>">
	</s:form>
	<s:if test="#session.upload=='sjt'">
	${fileFileName}&ensp;上次成功
    <form action="insert_kcsj_count">
    <input type="hidden" name="classID" value="<%=request.getParameter("classID") %>">
    <input type="hidden" name="courseID" value="<%=request.getParameter("courseID") %>">
    <input type="hidden" name="studentID" value="<%=request.getParameter("studentID") %>">
    <input type="hidden" name="fileFileName" value="${fileFileName}"><br>
    <s:submit value="提交"/>
    </form>
    </s:if>
</body>
</html>