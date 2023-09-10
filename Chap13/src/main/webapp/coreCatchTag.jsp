
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import = "java.io.FileReader" %>

<!DOCTYPE html>

<html>
<c:catch var = "reqParameterEx"> <!-- reqParameterEx에러 발생시 에에러 값을 넣음  -->
	<%
		String strParameter =  request.getParameter("NoParameter"); //NoParameter 가 없음
		out.println(strParameter.length()); //strParameter을 출력하려니 에러
	%>
</c:catch>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<pre>
		<c:out value="${reqParameterEx}"/>
	</pre>
</body>
</html>