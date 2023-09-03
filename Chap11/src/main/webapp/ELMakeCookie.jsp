<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie cookie = new Cookie("cookieName","cookieValue");
	response.addCookie(cookie);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 쿠키 생성</title>
</head>
<body>
	쿠키 생성이 완료되었습니다.
</body>
</html>