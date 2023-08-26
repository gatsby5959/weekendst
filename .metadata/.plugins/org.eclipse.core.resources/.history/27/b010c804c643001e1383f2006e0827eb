<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키를 이용한 세션관리</title>
</head>
<body>
<%
	String rememberId = request.getParameter("rememberId");//체크박스 값
	String id = request.getParameter("id");//실제 id값
	Cookie cookieRememberId;
	Cookie cookieId;
	Cookie cookieLoginStatus;
	
	if(rememberId != null && rememberId.equals("keep")){//체크박스가 체크되어잇으면
		cookieRememberId = new Cookie("rememberId","keep");//rememberId 쿠키생성
	}else{
		cookieRememberId = new Cookie("rememberId","temp");//체크박스 체크 안되어잇으면 temp
	}
	cookieId = new Cookie("id",id);//cookieId 쿠키 생성 (실질적인 ID값)
	cookieLoginStatus = new Cookie("loginStatus","login"); //쿠키 상태는 login
	
	//response전송
	response.addCookie(cookieRememberId);
	response.addCookie(cookieId);
	response.addCookie(cookieLoginStatus);
	
	out.println(cookieRememberId.getValue());
	response.sendRedirect("http://localhost:8088/Chap08/CookieSessionChk.jsp");
%>
</body>
</html>