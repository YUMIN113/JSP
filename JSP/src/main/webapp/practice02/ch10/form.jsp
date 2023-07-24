<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
자료 입력
<hr width="50%">
<form action="dispatcher1.jsp" method="post">
메시지 : <input type="text" name="message" required><br>
<input type="submit" value="전송">
<input type="reset" value="취소">
</form>
</body>
</html>