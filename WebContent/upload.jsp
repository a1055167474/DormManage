<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>




</style>
</head>
<body>
	<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">

	<form action="uploadServlet" method="post" enctype="multipart/form-data">
		
		请选择需要上传的文件:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="file" name="file"/>
		<br>
		<br>
		
		请选择您的身份（可选）：
		<input type="radio" name="interesting" value="student"/>本科生
		<input type="radio" name="interesting" value="postgraduate"/>研究生
		<input type="radio" name="interesting" value="teacher"/>教师
		<input type="radio" name="interesting" value="dormmanager"/>宿舍管理员
		<br>
		<br>
		请输入备注（可选）&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="desc"/>
		<br><br><br><br>
		<center><a href="success.jsp">提交</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="fileload?action=list">返回</a>
	</center>
		
		
	</form>
	</div>
</body>
</html>