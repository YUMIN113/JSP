<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String message = request.getParameter("message");
	String data = (String)application.getAttribute("data");
	
	if(data == null) {
		application.setAttribute("data", message);
	} else {
		application.setAttribute("data", data + ", " + message);
	}
	
	String url = "result.jsp";
	request.getRequestDispatcher(url).forward(request, response);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>