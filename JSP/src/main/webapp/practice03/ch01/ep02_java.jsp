<%--
- Java를 이용하여 세션을 생성을 설명한다.

--%>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession"%>
 
<%
session.invalidate();	//세션 종료

//세션 생성. 3가지 방법으로 생성한다.
HttpSession s = request.getSession();		//현재 세션 리턴. 세션이 없으면 새로 생성.
//HttpSession s = request.getSession(true);	//현재 세션 리턴. 세션이 없으면 새로 생성.
//HttpSession s = request.getSession(false);	//현재 세션 리턴. 세션이 없으면 null 리턴.
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
세션 정보
<hr width="80%">
세션 객체 : <%=s%><br>
세션 아이디 : <%=s.getId()%><br>
</body>
</html>