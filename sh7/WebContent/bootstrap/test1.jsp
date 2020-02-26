<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bootstrap 实例 - 动画的进度条</title>

<link rel="stylesheet" href="../styles/bootstrap.min.css">
<link rel="stylesheet" href="../styles/MyOwn.css">
<link rel="stylesheet" href="../css/bootstrap-theme.css">
<script src="../js/jquery-1.11.1.min.js"></script>
	<script src="../javascript/bootstrap.min.js"></script>
</head>
<script>  
var p = 101;   
var stop = 1;     
function run() {          
	p += 4;         
	$("div[class=bar]").css("width", p + "%");       
	var timer = setTimeout("run()", 500);           
	if (p >100&&stop<1) {                       
		p = 0;           
		}      
	}      
$('#BtnSubmit').click(function () {          
	$('#myModal1').modal('show');          
	p = 0;         
	stop = 0;          
	run();           
	$('#UpLoad').submit();                  
	});
	</script>

	
<body>

<div class="progress progress-striped active">
	<div class="progress-bar progress-bar-success" role="progressbar"
		 aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
		 style="width: 40%;">
		<span class="sr-only">40% 完成</span>
	</div>
</div>


<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"    aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static" style="width:300px">    <div class="modal-dialog">       <div class="modal-content" >           <span style="text-align:center;color:red">文件正在上传请勿刷新页面！</span><br />                     <div class="progress progress-striped active">               <div class="bar">               </div>           </div>       </div>   </div></div>



</body>
</html>