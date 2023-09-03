<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>EL요청 파라미터 데이터 사용</title>
</head>
<body>
이름 : ${param.name }<br/>
선택언어 : ${paramValues.language[0]}
		 ${paramValues.language[1]}
  		 ${paramValues.language[2]}
   		 ${paramValues.language[3]}
</body>
</html>