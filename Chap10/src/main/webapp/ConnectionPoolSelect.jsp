<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "db.ConnectionPool" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Connection Pool을 이용한 JSP페이지</title>
</head>
<body>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try{
		conn = ConnectionPool.getConnection();
		pstmt = conn.prepareStatement("SELECT * FROM STUDENT WHERE "+
									"DEPARTMENT_ID =? AND STUDENT_ID LIKE ?");
		
		pstmt.setString(1,"M001");
		pstmt.setString(2,"2014%");

		//PrepareStatement 인스턴스를 통해 실행한 SLQ문 실행 결과를REsul셋에 반화
		rs = pstmt.executeQuery();
		
		out.println("안뇽? "+ pstmt+ "<br>");
		while(rs.next()){
			out.println(rs.getString(1)+"|");	out.println(rs.getString(2)+"|");	out.println(rs.getString(3)+"|");	
			out.println(rs.getString(4)+"|");	out.println(rs.getString(5)+"<br/>");
		}
	}catch(SQLException e){
		out.println(e.getMessage());
	}finally{
		//반화된 데이터의 사용이 종료되면 close() 메서드를 사용하여 각각의 인스턴스를 종료
		if(pstmt != null) try{pstmt.close();} catch(SQLException e){}
		if(conn != null) try{conn.close();} catch(SQLException e){}
	}
%>
</body>
</html>