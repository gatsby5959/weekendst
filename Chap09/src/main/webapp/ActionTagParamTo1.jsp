<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>param 액션태그 사용</title>
</head>
<body>
	<% out.print("여기는 ActionTagParamTo1.jsp 페이지 입니다!<hr>"); %>
	<%= request.getParameter("hello") %><br>
	<%= request.getParameter("pageName") %>
</body>
</html>