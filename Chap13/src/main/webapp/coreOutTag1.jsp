<%@page import="java.io.FileReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import = "java.io.FileReader" %>

<!DOCTYPE html>

<html>
<%FileReader reader = new FileReader(application.getRealPath("HelloJSTL.jsp")); %>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<pre>
		<c:out value="<%=reader %>" escapeXml="false"/>
	</pre>
</body>
</html>