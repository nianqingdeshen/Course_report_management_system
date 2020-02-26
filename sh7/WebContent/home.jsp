<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
		<h2>欢迎来到课程设计报告管理系统</h2>
	</div>
	<s:if test="#session.loginName=='admin'">
		<div align="center">
		<h4>欢迎您：<s:property value="#session.loginName"/>
		<a href="${pageContext.request.contextPath}/user/exit">退出</a></h4>
		</div>
		
	</s:if>
	<s:else>
		<div align="center">
		<a href="${pageContext.request.contextPath}/login.jsp">登录</a>
		<a href="">注册</a>
		</div>
	</s:else>
	
	<s:if test="#session.loginTag!=null">
	<div align="center">
		<table>
			<tr align="center">
				<td>学生学号</td>
				<td>班级号</td>
				<td>学生姓名</td>
				<td>性别</td>
				<td>年龄</td>
				<td>密码</td>
				<td>操作</td>
			</tr>
			<s:iterator var="student" value="#session.studentList">
			<tr align="center">
				<td><s:property value="#student.studentID"/></td>
				<td><s:property value="#student.classID"/></td>
				<td><s:property value="#student.sname"/></td>
				<td><s:property value="#student.ssex"/></td>
				<td><s:property value="#student.sage"/></td>
				<td><s:property value="#student.password"/></td>
				<td>
				<a href="${pageContext.request.contextPath}/renter/goUpdatePage?renterId=${renter.renterId}">修改</a>
				<a href="">删除</a>
				</td>
			</tr>
			</s:iterator>
		</table>
	</div>
	<div align="center">
		<a href="${pageContext.request.contextPath}/page/firstPage">首页</a>&ensp;
		<a href="${pageContext.request.contextPath}/page/prePage">上一页</a>&ensp;
		<a href="${pageContext.request.contextPath}/page/nextPage">下一页</a>&ensp;
		<a href="${pageContext.request.contextPath}/page/lastPage">尾页</a>&ensp;
	</div>
	</s:if>
	<s:else>
	<div align="center">
		<h3>您还没有登录</h3>
	</div>
	</s:else>
	
</body>
</html>