<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scriptlet액션 태그</title>
</head>
<body>
<jsp:scriptlet>
	String hello = "Hello!";
	String world = "Action Tag!";
	out.print(hello+" "+world);
</jsp:scriptlet>

</body>
</html>