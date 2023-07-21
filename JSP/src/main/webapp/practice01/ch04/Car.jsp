<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="transport.car.Car" %>
<%
Car c1 = new Car("A6", "Audi", "Red", 4, 300);
Car c2 = new Car("Santafe", "Hyundai", "White", 5, 250);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
out.print(c1.getKind() + ", " + c1.getName() + ", " + c1.getColor() + ", " + c1.getDoor() + "(도어), " + c1.getSpeed() + "(km)");
%>
<br><br>
<%
out.print(c2.getKind() + ", " + c2.getName() + ", " + c2.getColor() + ", " + c2.getDoor() + "(도어), " + c2.getSpeed() + "(km)");
%>
</body>
</html>