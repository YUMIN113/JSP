<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>

<%
 	String data = (String)application.getAttribute("data");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../../static/css/work.css">
</head>
<body>
자료 확인
<hr width="80%">
데이터 : <%=data %><br><br>
<br>
<br>
<a href="form.jsp">{입력화면}</a>
</body>
</body>
</html>