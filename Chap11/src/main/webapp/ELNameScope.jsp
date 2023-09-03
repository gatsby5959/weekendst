<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setAttribute("dataname","request Attribute");
	application.setAttribute("dataname","application Attribute");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 데이터 이름 사용</title>
</head>
<body>
<h3>request 내장객체의 dataname 속성 값:</h3>
[<%=request.getAttribute("dataname") %>]<hr>
<h3>application 내장객체의 dataname 속성 값:</h3>
[<%=application.getAttribute("dataname") %>]<hr>
<h3>EL에서 출력되는 dataname의 값</h3>
[${dataname}}]<hr>
</body>
</html>