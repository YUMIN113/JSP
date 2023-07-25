<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

</head>
<body>
	카드 결제
	<hr width="60%">
	<form action="paymentController.jsp" method="post">
		이름 : <input type="text" name="name" required><br>
		결제금액 : <input type="number" name="payment" min="0" max="9999999" value="0" required><br>
		<input type="submit" value="전송"> <input type="reset"
			value="취소">
	</form>
</body>
</html>