<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="movie.Movie" %>
<%@ page import="java.util.*" %>

<%
	List<Movie> list = new ArrayList<>();
    Movie m1 = new Movie("탑건 : 매버릭", "액션", "조셉 코신스키", 110);
    Movie m2 = new Movie("아바타 물의길", "SF", "제임스 카메론", 192);
    Movie m3 = new Movie("소울", "드라마", "피드 닥터", 107);
    
    list.add(m1);
    list.add(m2);
    list.add(m3);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../../static/css/work.css">
<title>Insert title here</title>
<title>Insert title here</title>
</head>
<body>
<h1>영화 정보</h1>
<hr>
<table>
	<tr id=attribute>
		<td>제목</td>
		<td>카테고리</td>
		<td>감독</td>
		<td>상영시간</td>
	</tr>
	<%
	for(int i = 0; i < list.size(); i++) {
	%>
	<tr>
		<td><%=list.get(i).getTitle()%></td>
		<td><%=list.get(i).getCategory()%></td>
		<td><%=list.get(i).getDirector()%></td>
		<td><%=list.get(i).getTime()%></td>
	<tr>
	<% } %>
</table>
</body>
</html>