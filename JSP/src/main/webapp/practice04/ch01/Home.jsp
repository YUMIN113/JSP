<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member.Member" %>
<%
	Member member = (Member)session.getAttribute("member");
	String id = member.getId();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link rel="stylesheet" type="text/css" href="../../static/css/work.css">
</head>
<body>
<h2><a href="Home.jsp" style="text-decoration: none; color: black">{Home}</a> | <a href="Menu.jsp" style="text-decoration: none; color: black">상품</a> |
 <a href="OrderList.jsp" style="text-decoration: none; color: black">장바구니</a> | <a href="LogoutController.jsp" style="text-decoration: none; color: black">로그아웃(<%=id%>님)</a></h2>
<hr width="60%">
<img src="image/animal.jpg">
</body>
</html>