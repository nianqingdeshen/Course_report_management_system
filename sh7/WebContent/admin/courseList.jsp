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
      <th>课程ID</th>
      <th>任课老师</th>
      <th>课程名称</th>
      <th>学期</th>
      <th>修改</th>
      <th>删除</th>
    </tr>
  </thead>
  <tbody>
  	<s:iterator var="course" value="#session.courseList">
  <tbody>
    <tr >
 <td><s:property value="#course.courseID"/></td>
				<td><s:property value="#course.teacherID"/></td>
				<td><s:property value="#course.courseName"/></td>
				<td><s:property value="#course.term"/></td>
				<td><a href="">修改</a></td>
				<td><a href="">删除</a></td>
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