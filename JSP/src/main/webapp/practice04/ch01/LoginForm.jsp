<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../../static/css/work.css">
</head>
<body>
	<h2><a href="Index.jsp" style="text-decoration: none; color: black">Index</a> | <a href="LoginForm.jsp" style="text-decoration: none; color: black">{로그인}</a></h2>
	<hr width="60%">
	<form action="LoginController.jsp" method="post">
		<label for="id" id="loginLabel">
			아이디 : <input type="text" name="id" required>
		</label>
		<br>
		<label for="pwd" id="loginLabel">
			비밀번호 : <input type="password" name="pwd" required>
		</label>
		<input type="submit" value="로그인">
	</form>
</body>
</html>