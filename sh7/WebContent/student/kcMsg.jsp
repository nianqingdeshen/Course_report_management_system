<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="../styles/bootstrap.min.css">
<link rel="stylesheet" href="../styles/MyOwn.css">
<script src="../js/jquery-1.11.1.min.js"></script>
<script src="../javascript/bootstrap.min.js"></script>
<body>
	<table class="table table-hover">
  <thead>
    <tr>
      <th>课程名称</th>
      <th>学期</th>
    </tr>
  </thead>
  <s:iterator var="kc" value="#session.kcMsg">
  <tbody>
    <tr>
      <td><a href="${pageContext.request.contextPath}/updown?courseID=<s:property value="#kc.courseID"/>&classID=<s:property value="#kc.classID"/>&studentID=<%=request.getParameter("studentID") %>">
      <s:property value="#kc.courseName"/>&ensp;</a></td>
      <td>
      <s:property value="#kc.term"/>&ensp;</td>
    </tr>
  </tbody>
  </s:iterator>
</table>
</body>
</html>