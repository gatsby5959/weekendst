<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pageContext 내장객체의 인클루드</title>
</head>
<body>
	인클루드 수행 전 메시지입니다!<br/>
	<%out.print("하나<br/>"); %>
	<%out.print("둘<br/>"); %>
	<%out.print("셋<br/>"); %>
	
	인클루드를 사용합니다! <hr/>
	
	<%
		pageContext.include("pageContextIncluded.jsp");
	%>
	
	인클루드 수행 후 메세지입니다!<br/>
	<%out.print("하나<br/>"); %>
	<%out.print("둘<br/>"); %>
	<%out.print("셋<br/>"); %>
</body>
</html>