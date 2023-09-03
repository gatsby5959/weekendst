<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL의 삼항연산자</title>
</head>
<body>

	param.gender =="male"?"남자":"여자"<br/>
	<h3>결과:${param.gender=="male"?"남자":"여자"}</h3>

</body>
</html>