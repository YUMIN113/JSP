<%--
===== Run =====
- 세션에 생성된 시간과 마지막 요청 시간을 확인한다.

--%>




<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>

<%	
	long createTime = session.getCreationTime();		//세션이 생성된 시간	
	long lastTime = session.getLastAccessedTime();		//클라이언트 요청이 마지막으로 시도된 시간
	
	//시간(년월일시) 형식 설정
	String pattern = "yyyy-MM-dd hh:mm:ss";		//yyyy-MM-dd kk:mm:ss 24시간 표현
	SimpleDateFormat dateformat = new SimpleDateFormat(pattern);		
	
	//시간 형식으로 세션 시간 변경	
	Date date = new Date();
	date.setTime(createTime);
	String createTimePattern = dateformat.format(date);
	
	//시간 형식으로 마지막 요청 시간 변경
	date.setTime(lastTime);
	String lastTimePattern = dateformat.format(date);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
세션 정보
<hr width="80%">
생성 시간 : <%=createTimePattern%><br>
가장 최근 접근 시간 : <%=lastTimePattern%>
</body>
</html>