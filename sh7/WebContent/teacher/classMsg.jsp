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
      <th>班级名称</th>
      <th>班级人数</th>
    </tr>
  </thead>
  <tbody>
  	<s:iterator var="kc" value="#session.kcMsg">
	<s:iterator var="class" value="#session.classMsg">
    <tr >
 <td><a href="${pageContext.request.contextPath}/user/getKcsjMsg1?
	classID=<s:property value="#class.classID"/>&courseID=<s:property value="#kc.courseID"/>">
	<s:property value="#class.className"/></a>&ensp;</td>
				<td><s:property value="#class.studentNumber"/></td>
    </tr>
    </s:iterator>
  </s:iterator>
  </tbody>
</table>
</body>
</html>