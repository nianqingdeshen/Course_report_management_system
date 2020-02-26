<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>查询学生信息</title>
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
      <th>班级编号</th>
       <th>姓名</th>
      <th>性别</th>
      <th>年龄</th>
      <th>密码</th>
      <th>修改</th>
      <th>删除</th>
    </tr>
  </thead>
  <tbody>
  <s:iterator var="student" value="#session.studentMsg">
    <tr>
      <td><s:property value="#student.studentID"/></td>
      <td><s:property value="#student.class1.classID"/></td>
      <td><s:property value="#student.sname"/></td>
      <td><s:property value="#student.ssex"/></td>
      <td><s:property value="#student.sage"/></td>
      <td><s:property value="#student.password"/></td>
      <td><a href="${pageContext.request.contextPath}/user/getAllClassList?studentID=<s:property value="#student.studentID"/>&classID=<s:property value="#student.class1.classID"/>">修改</a></td>
	<td><a href="${pageContext.request.contextPath}/user/deleteBystudentID?studentID=<s:property value="#student.studentID"/>">删除</a></td>
    </tr>
    </s:iterator>
  </tbody>
</table>
</body>
</html>