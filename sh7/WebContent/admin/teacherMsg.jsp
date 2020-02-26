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
    <th>教师工号</th>
      <th>学院编号</th>
      <th>教师名字</th>
      <th>性别</th>
      <th>年龄</th>
      <th>密码</th>
      <th>修改</th>
      <th>删除</th>
    </tr>
  </thead>
  <tbody>
  	<s:iterator var="teacher" value="#session.teacherMsg">
    <tr >
    <td><s:property value="#teacher.teacherID"/></td>
 <td><s:property value="#teacher.college.collegeID"/></td>
				<td><s:property value="#teacher.teacherName"/></td>
				<td><s:property value="#teacher.sex"/></td>
				<td><s:property value="#teacher.age"/></td>
				<td><s:property value="#teacher.password"/></td>
			<td><a href="${pageContext.request.contextPath}/teacher/adminteachertUpdate?teacherID=<s:property value="#teacher.teacherID"/>&collegeID=<s:property value="#teacher.college.collegeID"/>">修改</a>
	</td><td><a href="">删除</a></td>
    </tr>
  </s:iterator>
  </tbody>
</table>
</body>
</html>