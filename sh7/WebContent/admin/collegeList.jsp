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
		<table>
			<tr align="center">
				<td>学院ID</td>
				<td>学院名称</td>
				<td>操作</td>
			</tr>
			<s:iterator var="college" value="#session.collegeList">
			<tr align="center">
				<td><s:property value="#college.collegeID"/></td>
				<td><s:property value="#college.collegeName"/></td>
				<td>
				<a href="${pageContext.request.contextPath}/renter/goUpdatePage?renterId=${renter.renterId}">修改</a>
				<a href="">删除</a>
				</td>
			</tr>
			</s:iterator>
		</table>
	</div>
</body>
</html>