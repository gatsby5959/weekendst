<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>param 액션태그 사용</title>
</head>
<body>
	<%out.print("여기는 ActionTagParamFrom2.jsp페이지 입니다!<br/>"); %>
	ActionTagParamFrom2.jsp 의 subject파라미터 값 : <%=request.getParameter("subject") %><hr>
	<jsp:include page="ActionTagParamTo2.jsp">
	<jsp:param name ="subject" value="Param Action Tag Exampe 2"/>
	</jsp:include>
</body>
</html>