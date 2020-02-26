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
      <th>课程设计报告名称</th>
      <th>分数</th>
      <th>课程名称</th>
      <th>学期</th>
      <th>修改</th>
      <th>删除</th>
    </tr>
  </thead>
  <tbody>
  	<s:iterator var="kcsj" value="#session.kcsjList">
    <tr >
				<td><s:property value="#kcsj.studentID"/></td>
				<td><s:property value="#kcsj.kname"/></td>
				<td><s:property value="#kcsj.score"/></td>
				<td><s:property value="#kcsj.courseName"/></td>
				<td><s:property value="#kcsj.term"/></td>
				<td>
				<a href="${pageContext.request.contextPath}/renter/goUpdatePage?renterId=${renter.renterId}">修改</a>
				</td><td><a href="">删除</a>
				</td>
    </tr>
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