<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL의 비교연산자</title>
</head>
<body>
	<h3>param.param == 3 : ${param.param ==3} </h3>
	<h3>param.param eq 3 : ${param.param eq 3}</h3><hr/>
	
	<h3>param.param != 3 : ${param.param !=3} </h3>
	<h3>param.param ne 3 : ${param.param ne 3}</h3><hr/>
	
	<h3>param.param > 3 : ${param.param > 3} </h3>
	<h3>param.param gt 3 : ${param.param gt 3}</h3><hr/>
	
	<h3>param.param >= 3 : ${param.param >= 3} </h3>
	<h3>param.param ge 3 : ${param.param ge 3}</h3><hr/>
	
	<h3>param.param < 3 : ${param.param < 3} </h3>
	<h3>param.param lt 3 : ${param.param lt 3}</h3><hr/>
	
	<h3>param.param <= 3 : ${param.param <= 3} </h3>
	<h3>param.param le 3 : ${param.param le 3}</h3><hr/>
	
</body>
</html>