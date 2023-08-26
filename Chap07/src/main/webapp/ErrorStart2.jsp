<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="ExceptionMethod.jsp"%>
<%
	String msg = request.getParameter("msg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>의도된 에러페이지</title>
</head>
<body>
	<%
		out.print(msg.length());
	%><br/>
	위 코드는 의도된 에러 코드입니다<br/>
	현재 내용은 JSP페이지 호출시 에러가 발생하여 실행되지 못합니다.
</body>
</html>