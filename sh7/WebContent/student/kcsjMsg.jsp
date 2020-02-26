<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="../styles/bootstrap.min.css">
<link rel="stylesheet" href="../styles/MyOwn.css">
<script src="../js/jquery-1.11.1.min.js"></script>
<script src="../javascript/bootstrap.min.js"></script>
<body>
<table  class="table table-hover" >
  <thead>
    <tr>
      <th >课程设计报告名称</th>
      <th >分数</th>
      <th >课程名称</th>
      <th >学期</th>
    </tr>
  </thead>
  <s:iterator var="kcsj" value="#session.kcsjMsg">
  <tbody>
    <tr>
      <td><s:property value="#kcsj.kname"/></td>
      <td><s:property value="#kcsj.score"/></td>
      <td><s:property value="#kcsj.courseName"/></td>
      <td><s:property value="#kcsj.term"/></td>
    </tr>
  </tbody>
  </s:iterator>
</table>

</body>
</html>