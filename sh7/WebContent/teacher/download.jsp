<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="/sh7/simpledownload.action?filename=${kname}">${kname}</a><br/>
    <form action="updateKcsj">
    <input type="hidden" name="kscjID" value="${kscjID}">
    <s:select name="score" label="请批改作业" list="#{'优秀':'优秀','良好':'良好','差':'差' }" listKey="value" listValue="key" >
    </s:select>
    <s:submit value="提交"/>
    </form>
</body>
</html>