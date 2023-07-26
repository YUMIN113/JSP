<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="member.Member" %>
<%@ page import="order.Order" %>
<%@ page import="java.text.DecimalFormat" %>
<%!
	public String toDecimalFormat(int price) {
	DecimalFormat df = new DecimalFormat("###,###");
	return df.format(price);
}
%>
<%
	Member member = (Member)session.getAttribute("member");
	String id = member.getId();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OrderList</title>
<link rel="stylesheet" type="text/css" href="../../static/css/work.css">
</head>
<body>
<h2><a href="Home.jsp" style="text-decoration: none; color: black">Home</a> | <a href="Menu.jsp" style="text-decoration: none; color: black">상품</a> |
 <a href="OrderList.jsp" style="text-decoration: none; color: black">{장바구니}</a> | <a href="LogoutController.jsp" style="text-decoration: none; color: black">로그아웃(<%=id%>님)</a></h2>
<hr width="60%">
<%
	List<Order> orderList = (List<Order>)session.getAttribute("orderList");

	if(orderList == null || orderList.size() == 0) {
		out.print("장바구니에 담긴 상품이 없습니다.");
	} else { 
%>

<table>
	<tr id="attribute">
		<td>순번</td>
		<td>구매번호</td>
		<td>상품명</td>
		<td>가격</td>
		<td>주문개수</td>
		<td>삭제</td>
	</tr>
	<%
	for(int i = 0; i < orderList.size(); i++) {
	%>
	<tr>
		<td><%=i + 1%></td>
		<td><%=orderList.get(i).getOrderNo()%></td>
		<td><%=orderList.get(i).getMenuName()%></td>
		<td><%=orderList.get(i).getPrice()%></td>
		<td><%=orderList.get(i).getCount()%></td>
		<td><button type="button" onclick="location.href='RemoveOrderController.jsp?orderNo=<%=orderList.get(i).getOrderNo()%>'">삭제</button></td>
	<tr>
	<% } %>
</table>
<br>
<%
int totalPrice = 0;
for (Order order : orderList) {
	totalPrice += (order.getPrice() * order.getCount());
}

%>
	
	총 금액 : <%=toDecimalFormat(totalPrice)%>(원)
	<% } %>
</body>
</html>