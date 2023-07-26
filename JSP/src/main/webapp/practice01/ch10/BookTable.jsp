<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="bookList.Book" %>
<%
	Book book = new Book("만화", "열혈강호", "전국진,양재현", "대원씨아이", 4500);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../../static/css/work.css">
<title>Insert title here</title>
</head>
<body>
<h1>도서 정보</h1>
<hr>
<table>
	<tr id=attribute>
		<td>카테고리</td>
		<td>제목</td>
		<td>작가</td>
		<td>출판사</td>
		<td>가격</td>
	</tr>
	<tr>
		<td><%= book.getCategory() %></td>
		<td><%= book.getTitle() %></td>
		<td><%= book.getWriters() %></td>
		<td><%= book.getPublish() %></td>
		<td><%= book.getPrice() %></td>
	</tr>
</table>
</body>
</html>