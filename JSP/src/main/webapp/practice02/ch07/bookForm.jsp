<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
도서 등록
<hr width="80%">
<form action="bookResult.jsp" method="post">
카테고리 : 
	<select name="category">
	<option value="health" selected>건강</option>
	<option value="novel">소설</option>
    <option value="cooking">요리</option>
    <option value="computer">컴퓨터</option>
	</select>
	<br> 
제목 : <input type="text" name="title" required><br> 
작가 : <input type="text" name="author" required><br> 
출판사 : <input type="text" name="publisher" required><br> 
가격 : <input type="text" name="price" required><br><br>
<input type="submit" value="전송">
<input type="reset" value="취소">
</form>
</body>
</html>