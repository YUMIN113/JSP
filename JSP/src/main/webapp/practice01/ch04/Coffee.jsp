<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="drink.bean.menu.Coffee" %>
<%
Coffee c1 = new Coffee("아메리카노",1500,"콜롬비아 수프리모");
Coffee c2 = new Coffee("라떼",2000,"에티오피아 예가체프");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
out.print(c1.getMenu() + ", " + c1.getPrice() + ", " + c1.getBean());
%>
<br><br>
<%
out.print(c2.getMenu() + ", " + c2.getPrice() + ", " + c2.getBean());
%>
</body>
</html>