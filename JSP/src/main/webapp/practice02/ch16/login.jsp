<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	Cookie[] cookies = request.getCookies();

	String id = " ";
	if(cookies != null) {
		id = cookies[0].getValue();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<form action="result.jsp" method="post">
아이디 : <input type="text" maxlength="20" name="id" value=" " required><br>
패스워드 : <input type="password" maxlength="20" name="password" required><br>
<input type="checkbox" name="idSave" value="true">&nbsp;아이디 저장<br>
<input type="submit" value="로그인">
<input type="reset" value="취소">
</form>
</body>
</html>