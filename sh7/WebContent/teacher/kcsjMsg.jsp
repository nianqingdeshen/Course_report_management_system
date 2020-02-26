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
    	<th>学生ID</th>
      <th>课程设计报告名称</th>
      <th>分数</th>
      <th>上传时间</th>
    </tr>
  </thead>
  <tbody>
  	<s:iterator var="kcsj" value="#session.kcsjMsg">
     <tr>
 <td><a href="${pageContext.request.contextPath}/download?kscjID=<s:property value="#kcsj.kscjID"/>&kname=<s:property value="#kcsj.kname"/>"><s:property value="#kcsj.kname"/></a></td>
				<td><s:property value="#kcsj.studentID"/></td>
				<td><s:property value="#kcsj.score"/></td>
				<td><s:property value="#kcsj.getTime"/></td>
    </tr>
  </s:iterator>
  </tbody>
</table>
</body>
</html>