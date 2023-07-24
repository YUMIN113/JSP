<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

</head>
<body>
전송 결과
<hr width="80%">
id : <%=id%><br>
password = <%=password%><br>
</body>
</html>