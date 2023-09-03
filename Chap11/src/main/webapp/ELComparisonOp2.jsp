<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL의 비교연산자</title>
</head>
<body>
	<h3>param.skill == "Jsp" : ${param.skill =="Jsp"} </h3>
	<h3>param.param eq "Jsp" : ${param.param eq "Jsp"}</h3><hr/>
	
	<h3>param.skill != "Jsp" : ${param.skill !="Jsp"} </h3>
	<h3>param.param ne "Jsp" : ${param.skill ne "Jsp"}</h3><hr/>
	
	<h3>param.skill > "Jsp" : ${param.skill > "Jsp"} </h3>
	<h3>param.param gt "Jsp" : ${param.param gt "Jsp"}</h3><hr/>
	
	<h3>param.skill >= "Jsp" : ${param.skill >="Jsp"} </h3>
	<h3>param.param ge "Jsp" : ${param.param ge "Jsp"}</h3><hr/>
	
	<h3>param.skill < "Jsp" : ${param.skill < "Jsp"} </h3>
	<h3>param.param lt "Jsp" : ${param.param lt "Jsp"}</h3><hr/>
	
	<h3>param.skill <= "Jsp" : ${param.skill <="Jsp"} </h3>
	<h3>param.param le "Jsp" : ${param.param le "Jsp"}</h3><hr/>
	
</body>
</html>