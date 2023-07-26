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
<title>Menu</title>
<link rel="stylesheet" type="text/css" href="../../static/css/work.css">
</head>
<body>
<h2><a href="Home.jsp" style="text-decoration: none; color: black">Home</a> | <a href="Menu.jsp" style="text-decoration: none; color: black">{상품}</a> |
 <a href="OrderList.jsp" style="text-decoration: none; color: black">장바구니</a> | <a href="LogoutController.jsp" style="text-decoration: none; color: black">로그아웃(<%=id%>님)</a></h2>
<hr width="60%">
</body>
<h2>장바구니에 담을 상품을 선택하세요.</h2>
<form action="OrderController.jsp" method="post">
	<input type="text" name="menuName" value="믹스커피" readonly> 
	<input type="text" name="price" value="2500" readonly>
	<select name="count" id="count">
	    <option value="1">1</option>
	    <option value="2">2</option>
	    <option value="3">3</option>
	    <option value="4">4</option>
	    <option value="5">5</option>
  	</select>
	<input type="submit" value="담기">
	<input type="reset" value="취소">
</form>
<form action="OrderController.jsp" method="post">
	<input type="text" name="menuName" value="라면" readonly> 
	<input type="text" name="price" value="1500" readonly>
	<select name="count" id="count">
	    <option value="1">1</option>
	    <option value="2">2</option>
	    <option value="3">3</option>
	    <option value="4">4</option>
	    <option value="5">5</option>
  	</select>
	<input type="submit" value="담기">
	<input type="reset" value="취소">
</form>
<form action="OrderController.jsp" method="post">
	<input type="text" name="menuName" value="물" readonly> 
	<input type="text" name="price" value="800" readonly>
	<select name="count" id="count">
	    <option value="1">1</option>
	    <option value="2">2</option>
	    <option value="3">3</option>
	    <option value="4">4</option>
	    <option value="5">5</option>
  	</select>
	<input type="submit" value="담기">
	<input type="reset" value="취소">
</form>
</html>