<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	//request.getRequestDispatcher()는 request 정보가 유지된다.
	request.getRequestDispatcher("loginResult.jsp").forward(request, response);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
</body>
</html>