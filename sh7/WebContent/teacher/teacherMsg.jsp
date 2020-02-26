<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../styles/bootstrap.min.css">
<link rel="stylesheet" href="../styles/MyOwn.css">
<script src="../js/jquery-1.11.1.min.js"></script>
<script src="../javascript/bootstrap.min.js"></script>
</head>
<body>
	<table class="table table-striped">
  <thead>
    <tr>
      <th>学院</th>
      <th>性别</th>
      <th>年龄</th>
    </tr>
  </thead>
  <tbody>
  	<s:iterator var="teacher" value="#session.teacherMsg">
    <tr >
 <td><s:property value="#teacher.college.collegeName"/></td>
				<td><s:property value="#teacher.sex"/></td>
				<td><s:property value="#teacher.age"/></td>
    </tr>
  </s:iterator>
  </tbody>
</table>
</body>
</html>