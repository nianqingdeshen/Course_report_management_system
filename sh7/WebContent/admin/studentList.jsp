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
      <th>学生学号</th>
      <th>班级号</th>
      <th>学生姓名</th>
      <th>性别</th>
      <th>年龄</th>
      <th>密码</th>
      <th>修改</th>
      <th>删除</th>
    </tr>
  </thead>
  <tbody>
  	<s:iterator var="student" value="#session.studentList">
  <tbody>
    <tr >
				<td><s:property value="#student.studentID"/></td>
				<td><s:property value="#student.class1.classID"/></td>
				<td><s:property value="#student.sname"/></td>
				<td><s:property value="#student.ssex"/></td>
				<td><s:property value="#student.sage"/></td>
				<td><s:property value="#student.password"/></td>
				<td>
				<a href="${pageContext.request.contextPath}/user/getAllClassList?studentID=<s:property value="#student.studentID"/>&classID=
				<s:property value="#student.class1.classID"/>">修改</a>
				</td><td>
				<a href="${pageContext.request.contextPath}/user/deleteBystudentID?studentID=
					<s:property value="#student.studentID"/>">删除</a>
				</td>
    </tr>
  </tbody>
  </s:iterator>
  </tbody>
</table>
<div align="center">
<ul class="pagination pagination-lg">
	<li><a href="#">&laquo;</a></li>
	<li><a href="#">1</a></li>
	<li><a href="#">2</a></li>
	<li><a href="#">3</a></li>
	<li><a href="#">4</a></li>
	<li><a href="#">5</a></li>
	<li><a href="#">&raquo;</a></li>
</ul></div>
</body>
</html>