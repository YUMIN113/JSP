<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	public String majorToKorean(String major) {
		String koreanMajor = " ";
		if(major.equals("1")) {
			koreanMajor = "국문학과";
		} else if(major.equals("2")) {
			koreanMajor = "영문학과";
		}  else if(major.equals("3")) {
			koreanMajor = "수학과";
		}  else if(major.equals("4")) {
			koreanMajor = "정치학과";
		} else if(major.equals("5")) {
			koreanMajor = "체육학과";
		}
		return koreanMajor;
}

	public String genderToKorean(String gender) {
		String koreanGender = " ";
		if(gender.equals("woman")) {
			koreanGender = "여자";
		} else {
			koreanGender = "남자";
		}
		return koreanGender;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../../static/css/work.css">
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String hakbun = request.getParameter("hakbun");
	String koreanMajor = majorToKorean(request.getParameter("major"));
	String genderToKorean = genderToKorean(request.getParameter("gender"));
%>

<h2>전송 결과</h2>
<hr>
성명 : <%=name %>
<br>
학번 : <%=hakbun %>
<br>
성별 : <%=genderToKorean %>
<br>
학과 : <%=koreanMajor %>
<br><br>
{입력화면}

</body>
</html>