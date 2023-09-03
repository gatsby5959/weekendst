<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL pageContext 사용</title>
</head>
<body>
	<h3>pageContext.request</h3>
	${pageContext.request}<hr/>
	
	<h3>pageContext.request.requestURI</h3>
	${pageContext.request.requestURI}<hr/>
	
	<h3>pageContext.request["requestURL"]</h3>
	${pageContext.request["requestURL"]}<hr/>
	
	<h3>pageContext["request"]["requestedSessionId"]</h3>
	  ${pageContext["request"]["requestedSessionId"]}<hr/>
	 
	<h3>pageContext["request"].queryString</h3> <!-- 딴대서 받는게 아니라 내가 직접 주소뒤에 ?param=test를 쳐야 확인가능 -->
	   ${pageContext["request"].queryString}
</body>
</html>