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
      <th>学号</th>
      <th>学院</th>
      <th>班级</th>
      <th>性别</th>
      <th>年龄</th>
    </tr>
  </thead>
  <tbody>
  <s:iterator var="student" value="#session.studentMsg">
    <tr>
      <td><s:property value="#student.studentID"/></td>
      <td><s:property value="#student.class1.college.collegeName"/></td>
      <td><s:property value="#student.class1.className"/></td>
      <td><s:property value="#student.ssex"/></td>
      <td><s:property value="#student.sage"/></td>
    </tr>
    </s:iterator>
  </tbody>
</table>
</div>
</body>
</html>