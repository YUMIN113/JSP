<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../../static/css/work.css">
</head>
<body>
	<h2><a href="loginHome.jsp" style="text-decoration: none; color: black">홈</a> |
	<a href="loginStatus.jsp" style="text-decoration: none; color: black">현황</a></h2>
	<hr width="60%">
	<form action="loginController.jsp" method="post">
		아이디 : <input type="text" name="id" required><br>
		비밀번호 : <input type="password" name="pwd" required><br>
		<input type="submit" value="전송"> <input type="reset"
			value="취소">
	</form>
</body>
</html>