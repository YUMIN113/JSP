<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<form action="studentResult.jsp" method="post">
성명 : <input type="text" name="name" required><br>
학번 : <input type="text" name="hakbun" required><br>
전공 : <select name="major">
			<option selected value="1">국문학</option>
			<option value="2">영문학</option>
			<option value="3">수학</option>
			<option value="4">정치학</option>
			<option value="5">체육학</option>
		</select><br>
성별 : 
<input  type="radio" name="gender"  value="man" checked>남자 
<input type="radio" name="gender" value="woman">여자<br><br>
<input type="submit" value="전송">
<input type="reset" value="취소">
</form>
</body>
</html>