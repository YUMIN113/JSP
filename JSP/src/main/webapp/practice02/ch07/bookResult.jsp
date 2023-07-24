<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="book.Book" %>
<%!
	public String categoryToKorean(String category) {
		String koreanCategory = " ";
		
		switch(category) {
		case "health" : koreanCategory = "건강";
		break;
		case "novel" : koreanCategory = "소설";
		break;
		case "cooking" : koreanCategory = "요리";
		break;
		case "computer" : koreanCategory = "컴퓨터";
		break;
		}
		return koreanCategory;
	
	}

	public String toDecimalFormat(int price) {
		DecimalFormat df = new DecimalFormat("###,###");
		return df.format(price);
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../../static/css/work.css">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

	String koreanCategory = categoryToKorean(request.getParameter("category"));
	String title = request.getParameter("title");
	String writers = request.getParameter("author");
	String publish = request.getParameter("publisher");
	int price = Integer.parseInt(request.getParameter("price"));
	String chagedPrice = toDecimalFormat(price);
	Book book = new Book(koreanCategory, title, writers, publish, chagedPrice);
%>
<h1>전송 결과</h1>
<hr>
<table>
	<tr id="attribute">
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
<br><br>
<a href="bookForm.jsp">[도서 등록]</a>
</body>
</html>