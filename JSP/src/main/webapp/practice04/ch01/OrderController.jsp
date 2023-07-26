<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="order.Order" %>
<%!
	int orderNo = 0;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OrderController</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	List<Order> storedOrderList = (List<Order>)session.getAttribute("orderList");

	orderNo++;
	String menuName = request.getParameter("menuName");
	int price = Integer.parseInt(request.getParameter("price"));
	int count = Integer.parseInt(request.getParameter("count"));
	
	if(storedOrderList == null) {
		List<Order> orderList = new ArrayList<>();
		Order order = new Order(orderNo, menuName, price, count);
		orderList.add(order);
		session.setAttribute("orderList", orderList);
	} else {
		
		for(int i = 0; i < storedOrderList.size(); i++) {
			if(storedOrderList.get(i).getMenuName().equals(menuName)) {
				int plusCount = storedOrderList.get(i).getCount() + count;
				storedOrderList.get(i).setCount(plusCount);
				session.setAttribute("orderList", storedOrderList);
				response.sendRedirect("OrderList.jsp");
				return;
			}
		}
		
		Order order = new Order(orderNo, menuName, price, count);
		storedOrderList.add(order);
		session.setAttribute("orderList", storedOrderList);
	}
	
	response.sendRedirect("OrderList.jsp");
	
%>
</body>
</html>