<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="user.LoginUser" %>

<%!
	Date date = new Date();
	SimpleDateFormat s = new SimpleDateFormat("yyyy.MM.dd HH:mm:ss");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	List<LoginUser> loginUsers = (List<LoginUser>)application.getAttribute("loginUsers");

	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String now = s.format(date);
	
	LoginUser loginUser = new LoginUser(id, pwd, now);
	
	if(loginUsers == null) {
		loginUsers = new ArrayList<LoginUser>();
		loginUsers.add(loginUser);
		application.setAttribute("loginUsers", loginUsers);
	} else {
		loginUsers.add(loginUser);
		application.setAttribute("loginUsers", loginUsers);
	}
	
	response.sendRedirect("loginStatus.jsp");
%>
</body>
</html>