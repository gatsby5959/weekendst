<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String redirect = request.getParameter("redirect");
	
	if(redirect == null){
		out.println("redirect가 지정되지 않았습니다");
	}else if(redirect.equals("naver")){
		response.sendRedirect("http://www.naver.com");
	}else{
		response.sendRedirect("http://localhost:8088/Chap06/responseRedirected.jsp");
	}
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>