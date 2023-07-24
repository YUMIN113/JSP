<%-- 
- totalCnt
	- 웹 브라우저가 리로딩을 하면 값이 계속 증가한다.
	
- cnt
	- 서블릿 service()에 해당하는 _jspService()에서 선언된 로컬 변수
	- _jspService()는 요청시 매번 새로 실행된다. 
		따라서 웹 브라우저가 리로딩 하더라도 값이 증가하지 않는다.
--%>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%! 
	private int totalCnt = 0;

	public int getTotalCnt() {
		return totalCnt;
	}
	
	public void plusTotalCnt() {
		totalCnt = totalCnt + 1;
	}
%>
<%	
	int cnt = 0;
	cnt = cnt + 1;
	
	plusTotalCnt();	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
totalCnt=<%= getTotalCnt()%>
<br>
cnt=<%=cnt%>

</body>
</html>