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
카테고리 : <%=book.getCategory()%>
<br>
제목 : <%=book.getTitle()%>
<br>
작가 : <%=book.getWriters()%>
<br>
출판사 : <%=book.getPublish()%>
<br>
가격 : <%=book.getPrice()%>
</body>
</html>