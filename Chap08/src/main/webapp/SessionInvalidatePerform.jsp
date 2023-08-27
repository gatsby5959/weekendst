<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션의 종료</title>
</head>
<body>
	<%
		if(session!=null)
			session.invalidate(); //속성값 삭제
		response.sendRedirect("http://localhost:8088/Chap08/SessionInvalidateResult.jsp");
	%>
</body>
</html>