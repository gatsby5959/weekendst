
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="num1" value="100"/>
<c:set var="num2" value="30"/>
<!DOCTYPE html>

<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<pre>
		<h2>${num1}+${num2}=<c:out value="${num1+num2}"/></h2>
	</pre>
</body>
</html>