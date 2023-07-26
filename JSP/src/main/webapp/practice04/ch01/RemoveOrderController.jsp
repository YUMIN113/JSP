<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="order.Order" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int orderNo = Integer.parseInt(request.getParameter("orderNo"));
	List<Order> storedOrderList = (List<Order>)session.getAttribute("orderList");
	
	for(int i = 0; i < storedOrderList.size(); i++) {
		if(orderNo == storedOrderList.get(i).getOrderNo()) {
			storedOrderList.remove(i);
			session.setAttribute("orderList", storedOrderList);
		}
	}
	
	response.sendRedirect("OrderList.jsp");
	
%>
</body>
</html>