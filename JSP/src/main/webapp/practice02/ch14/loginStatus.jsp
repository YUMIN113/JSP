<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="user.LoginUser" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../../static/css/work.css">
</head>
<body>
<%
	List<LoginUser> loginUsers = (List<LoginUser>)application.getAttribute("loginUsers");

	if(loginUsers == null) {
		out.print("로그인 사용자가 없습니다.");
		return;
	}
%>

<h2><a href="loginHome.jsp" style="text-decoration: none; color: black">홈</a> | <a href="loginForm.jsp" style="text-decoration: none; color: black">로그인</a></h2>
<hr width="60%">
<table>
	<tr id="attribute">
		<td>순번</td>
		<td>아이디</td>
		<td>비밀번호</td>
		<td>로그인 일시</td>
	</tr>
	<%
	for(int i = 0; i < loginUsers.size(); i++) {
	%>
	<tr>
		<td><%=i + 1%></td>
		<td><%=loginUsers.get(i).getId()%></td>
		<td><%=loginUsers.get(i).getPwd()%></td>
		<td><%=loginUsers.get(i).getNow()%></td>
	<tr>
	<% } %>
</table>
</body>
</html>