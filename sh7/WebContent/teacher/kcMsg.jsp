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
    
      <th>课程名称</th>
      <th>学期</th>
    </tr>
  </thead>
  <tbody>
  	<s:iterator var="kc" value="#session.kcMsg">
    <tr >
 <td><a href="${pageContext.request.contextPath}/user/getClassMsg?courseID=<s:property value="#kc.courseID"/>">
 <s:property value="#kc.courseName"/></a></td>
				<td><s:property value="#kc.term"/></td>
				
    </tr>
  </s:iterator>
  </tbody>
</table>
</body>
</html>