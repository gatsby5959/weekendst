<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getPropery 액션태그 사용</title>
</head>
<body>
	<jsp:useBean id="myMember" class = "beans.Member" />
	
	<jsp:setProperty name = "myMember" property="id" value="OKJSP"/>
	<jsp:setProperty name = "myMember" property="password" value="OKPassword"/>
	<jsp:setProperty name = "myMember" property="addr" value="인천광역시 연수구 어딘가"/>
	
	ID: <jsp:getProperty name = "myMember" property="id"/><br/><!-- 액션태그 -->
	Password: <jsp:getProperty name = "myMember" property="password"/><br/> 
	Addr : <jsp:getProperty name = "myMember" property="addr"/>
</body>
</html>