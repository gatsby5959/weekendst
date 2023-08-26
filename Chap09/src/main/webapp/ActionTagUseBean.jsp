<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useBean 액션태그 사용</title>
</head>
<body>

	<jsp:useBean id="myMember" class="beans.Member"/>
	<%
		myMember.setId("OKJSP");
		myMember.setPassword("OKPassword");
	%>
	ID : <%= myMember.getId() %> <br/>
	Password : <%=myMember.getPassword() %>
	
</body>
</html>