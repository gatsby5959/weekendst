<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Cookie 값 변경</title>
</head>
<body>
	<h3>Cookie 클래스를 사용하여 키를 생성합니다.</h3>
	<%
		Cookie cookie = new Cookie("MyCookie","MyCookiesValue");
	
		response.addCookie(cookie);
	%>
	<h4>쿠키 생성이 완료 되었습니다.</h4><hr>
	<h3>생성된 쿠키의 구성요소를 출력합니다.</h3>
	<h4>쿠키의 이름 : <%=cookie.getName() %><br/>
	쿠키의 값 : <%=cookie.getValue() %><br/></hr>
	</h4>
	<form action="CookieValueChg.jsp" method="post">
		<input type="submit" value = "쿠키 변경 페이지">
	</form>
</body>
</html>