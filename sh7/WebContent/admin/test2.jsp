<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>管理员界面导航</title>
</head>
<body>
<div align="center">
<h4>欢迎您：admin
<a href="${pageContext.request.contextPath}/user/exit">退出</a></h4>
<hr/>
<a href="#">首页</a>&ensp;
<a href="${pageContext.request.contextPath}/user/getTeacherList">教师管理</a>&ensp;
<a href="${pageContext.request.contextPath}/user/getCourseList">课程管理</a>&ensp;
<a href="${pageContext.request.contextPath}/user/getStudentList">学生管理</a>&ensp;
<a href="${pageContext.request.contextPath}/user/getClassList">班级管理</a>&ensp;
<a href="${pageContext.request.contextPath}/user/getKcsjList">课程设计报告管理</a>&ensp;
<a href="${pageContext.request.contextPath}/user/addStudentInput">添加学生信息</a>&ensp;
<a href="${pageContext.request.contextPath}/user/getKcsjList">添加老师信息</a>&ensp;




</div>
<div align="center">
<h3>欢迎来到课程设计报告管理系统！</h3>
</div>
</body>
</html>