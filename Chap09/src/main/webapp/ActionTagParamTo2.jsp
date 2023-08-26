<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>param 액션태그 사용</title>
</head>
<body>
	<%out.print("여기는 ActionTagParamTo2.jsp 페이지입니다!<br/>"); %>
	ActionTagParamTo2.jsp의 subject 파라미터 값 : <%= request.getParameter("subject") %>
</body>
</html>