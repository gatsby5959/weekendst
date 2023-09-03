<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL의 empty 연산자</title>
</head>
<body>
<h3>${empty param.id?"방문자":param.id}님 환영합니다.<br/></h3>
</body>
</html>