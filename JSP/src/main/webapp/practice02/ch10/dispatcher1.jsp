<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%	
	request.setCharacterEncoding("UTF-8");	

	String data = request.getParameter("message");
	request.setAttribute("data", data);
	System.out.println("[dispatcher1.jsp] data=" + data);
	
	String url = "dispatcher2.jsp";
	request.getRequestDispatcher(url).forward(request, response);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
</body>
</html>