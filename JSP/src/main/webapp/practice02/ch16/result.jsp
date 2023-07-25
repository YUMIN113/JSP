<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String idSave = request.getParameter("idSave");
	
	String result = " ";
	if(idSave == null) {
		result = "X";
	} else if(idSave.equals("true")) {
		result = "O";
		
		Cookie loginCookie = new Cookie("myCookie", id);
		loginCookie.setPath("/");
		loginCookie.setMaxAge(3600);
		response.addCookie(loginCookie);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../../static/css/work.css">
</head>
<body>
<h2>로그인 결과</h2>
<hr width="60%">
아이디 : <%=id %>
<br>
패스워드 : <%=password %>
<br>
아이디 저장 : <%=result %>
<br>
<a href="login.jsp">{ 로그인 }</a>
</body>
</html>