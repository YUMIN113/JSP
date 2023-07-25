<%--
===== session =====
- session 객체는 page 지시자의 session 속성으로 설정한다.

# 속성값
- 기본값 : true
- true : 화면에서 session 객체 사용
- false : 화면에서 session 객체 사용 못함. 에러 발생

# JSESSIONID
- 톰켓 컨테이니어에서 세션을 유지하기 위해 자동으로 발생하는 쿠키
--%>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%-- <%@ page session="false"%> --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
세션 정보
<hr width="80%">
세션 아이디 : <%=session.getId()%>
</body>
</html>