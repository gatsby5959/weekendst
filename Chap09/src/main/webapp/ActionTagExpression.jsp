<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>expression 액션태그</title>
</head>
<body>
	<jsp:scriptlet>
		String hello = "Hello!";
		String expression = "Expression!";
	</jsp:scriptlet>
	<jsp:expression>hello+" "+expression</jsp:expression>
</body>
</html>