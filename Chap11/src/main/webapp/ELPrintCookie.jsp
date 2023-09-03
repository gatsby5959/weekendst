<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 쿠키 출력</title>
</head>
<body>
	<h3>cookie 작성 후 출력</h3>
	${cookie}<hr/>
	
	<h3>cookie.cookieName 작성 후 출력</h3>
	${cookie.cookieName}<hr/>
	
	<h3>cookie.cookieName의 value 출력</h3>
	${cookie.cookieName.value}<br/>
	${cookie.cookieName["value"]}<br/>
	${cookie["cookieName"].value}<br/>
	${cookie["cookieName"]["value"]}<br/>
	
	
	
</body>
</html>