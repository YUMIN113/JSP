<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
// ===== 쿠키 전체 삭제 =====
Cookie[] cookies = request.getCookies();

for (int i = 0; i < cookies.length; i++) {
	cookies[i].setMaxAge(0); // cookie 삭제. 쿠키 유효시간을 "0"으로 설정하면, 쿠키가 삭제된다.
	response.addCookie(cookies[i]);
}
%>


<%--
//===== 특정 쿠키 삭제 =====
Cookie[] cookies = request.getCookies();

for (int i = 0; i < cookies.length; i++) {
	if (cookies[i].getName().equals("coffee")) {
		cookies[i].setMaxAge(10);
	} else { //  coffee를 제외한 나머지 쿠키 삭제
		cookies[i].setMaxAge(0);
	}

	response.addCookie(cookies[i]);
}
--%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/static/css/work.css">
</head>
<body>
	Cookie 삭제
	<hr width="80%">
	<br>
	<br>
	<a href="index.jsp">{ Index }</a>
</body>
</html>