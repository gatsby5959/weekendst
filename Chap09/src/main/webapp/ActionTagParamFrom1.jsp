<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:forward page="ActionTagParamTo1.jsp">
		<jsp:param name = "hello" value="Hello!"/>
		<jsp:param name = "pageName" value = "ActionTagParamTo1.jsp"/>
	</jsp:forward>
</body>
</html>