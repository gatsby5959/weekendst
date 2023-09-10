<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="score" value="59"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:choose> <!-- 다중if -->
		<c:when test="${score>=90}"> <!-- else if -->
			<h3>A학점입니다.</h3>
		</c:when>
		<c:when test="${score>=80}"> <!-- else if -->
			<h3>B학점입니다.</h3>
		</c:when>
		<c:when test="${score>=70}"> <!-- else if -->
			<h3>C학점입니다.</h3>
		</c:when>
		<c:when test="${score>=60}"> <!-- else if -->
			<h3>D학점입니다.</h3>
		</c:when>
		<c:otherwise>
			<h3>F학점입니다.</h3>
		</c:otherwise>
	</c:choose>
</body>
</html>