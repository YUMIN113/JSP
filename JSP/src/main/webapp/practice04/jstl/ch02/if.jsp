<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><!-- JSTL Core Tag -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/static/css/work.css">
<title>Insert title here</title>
</head>
<body>

	<c:set var="color" value="black" /><%-- 변수 생성 --%>
	<c:set var="score" value="20" /><%-- 변수 생성 --%>
	
	<c:if test="${color eq 'black'}" var="rst1">
		${color}
	</c:if>
	| 결과 : ${rst1}
	<br>
	
	<c:if test="${color !=  null}" var="rst2">
		${color}는 not null
	</c:if>
	| 결과 : ${rst2}
	<br>
	
	<c:if test="${score ne 10}" var="rst3">
		${score}는 10이 아님
	</c:if>
	| 결과 : ${rst3}
	<br>
	
	<c:if test="${score >= 10}" var="rst4">
		${score}는 10보다 크다
	</c:if>
	| 결과 : ${rst4}

</body>
</html>