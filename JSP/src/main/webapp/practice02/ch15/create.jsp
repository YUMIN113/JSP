<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
//===== 쿠키 생성 =====
// 쿠키 생성 : new Cookie()
// 쿠키 유지 시간 : setMaxAge(). 단위는 "초(secode)".  1년 : 365*24*60*60
// 쿠키 전송 요청 경로 : setPath(). 정해진 서버 경로로 접근할 때 쿠키가 서버로 전달한다. setPath()가 없으면 전송 요청 경로 현재 디렉토리

Cookie c1 = new Cookie("coffee", "americano"); // cookie 생성		
c1.setPath("/"); // 모든 경로로 접근할 때 쿠키 전달
c1.setMaxAge(10); // 10초
response.addCookie(c1); // 응답 헤더에 cookie 추가

Cookie c2 = new Cookie("cake", "당근케이크");
c2.setMaxAge(300); // 300초
response.addCookie(c2);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	Cookie 생성
	<hr width="80%">
	<br>
	<br>
	<a href="index.jsp">{ Index }</a>
</body>
</html>