<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>检索页面</title>

<link rel="stylesheet" href="../styles/bootstrap.min.css">
<link rel="stylesheet" href="../styles/MyOwn.css">
<script src="../js/jquery-1.11.1.min.js"></script>
<script src="../javascript/bootstrap.min.js"></script>

</head>
<body>
<div class="container" style="width:100%;height:100%"><br>
    <div class="row" style="background:url(../images/4.jpg); background-size: 100%;height:600px;">
        <div class="col-md-3" style="height:600px;">
        <br>
	<form action="${pageContext.request.contextPath}/user/getStudentMsg2" target="iframe1">
	
		<div class="form-group">
	    <input type="text" class="form-control" name="studentID" placeholder="请输入学生学号">
	  	</div>
	  	<div align="center">
	  	<button type="submit" style="width:100px;"class="btn btn-default">搜索</button>
	  	</div>
 	</form>
  	<br>
  	<form action="${pageContext.request.contextPath}/user/getTeacherMsg1" target="iframe1">
		
		<div class="form-group">
	    <input type="text" class="form-control" name="teacherID" placeholder="请输入老师工号">
	  	</div>
	  	<div align="center">
	  	<button type="submit" style="width:100px;"class="btn btn-default">搜索</button>
	  	</div>
  </form>
 	<br>
  	<br>
   <form action="${pageContext.request.contextPath}/user/getKcsjMsg2" target="iframe1">
		<div class="form-group">
	    <input type="text" class="form-control" name="classID" placeholder="请输入班级编号">
	  	</div>
		<div class="form-group">
	    <input type="text" class="form-control" name="courseID" placeholder="请输入课程编号">
	  	</div>
	  	<div align="center">
	  	<button type="submit" style="width:100px;"class="btn btn-default">搜索</button>
	  	</div>
  </form>
  </div>
   <div class="col-md-9" style="height:600px;">
   		<iframe  src="/sh7/welcome.html"  style="background-color:white;"width="100%" height="100%"name="iframe1" scrolling="no">   

		</iframe>
   </div>
  </div>
  </div>
</body>
</html>