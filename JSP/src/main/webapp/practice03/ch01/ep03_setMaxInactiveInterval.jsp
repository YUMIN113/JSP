<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String sessionId = session.getId();
	session.setMaxInactiveInterval(3);
	int intervalTime = session.getMaxInactiveInterval();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
세션 정보
<hr width="60%">
세션 아이디 : <%=sessionId %><br>
세션 유지 시간 : <%=intervalTime %>(sec)
</body>
</html>