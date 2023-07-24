<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	String[] names = new String[3];
%>

<%
	names[0] = "kim";
	names[1] = "lee";
	names[2] = "song";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../../static/css/work.css">
<title>Insert title here</title>
</head>
<body>
	<%
		for(int i = 0; i < names.length; i++) {
			out.print(names[i] +"&nbsp;");
		}
	%>
	<br><br>
	<%
		for(int i = 0; i < names.length; i++) {
	%>
	<%=names[i]%>
	<% } %>
	<br><br>
<table>
	<tr id="attribute">
		<td>번호</td>
		<td>값</td>
	</tr>
	<%
		for(int i = 0; i < names.length; i++) {
	%>
	<tr>
		<td>i=[<%=i%>]</td>
		<td><%=names[i]%></td>
	</tr>
	<% } %>
</table>
</body>
</html>