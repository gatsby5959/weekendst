<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC PreparedStatement</title>
</head>
<body>
<%
	//변수 선언
	Connection conn = null;
	ResultSet rs = null;
	PreparedStatement pstmt = null;

	try{
		//JDBC드라이버 로딩
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		//데이터베이스 접속
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspbook","jspbook","jspbook");

		
		//SQL문을 실행하기 위한 Pre페어스테이트먼트 사용
		pstmt = conn.prepareStatement("SELECT * FROM STUDENT WHERE "+
									"DEPARTMENT_ID =? AND STUDENT_ID LIKE ?");
		
		pstmt.setString(1,"M001");
		pstmt.setString(2,"2014%");
		
		
		//PrepareStatement 인스턴스를 통해 실행한 SLQ문 실행 결과를REsul셋에 반화
		rs = pstmt.executeQuery();
		
		out.println(pstmt+"--------------------------"+"<br>");
		while(rs.next()){
			out.println(rs.getString(1)+"|");	out.println(rs.getString(2)+"|");	out.println(rs.getString(3)+"|");	
			out.println(rs.getString(4)+"|");	out.println(rs.getString(5)+"<br/>");
		}
		
	}
	catch(SQLException e){
		//에러발생
		out.println(e.getMessage()); //콘솔에 에러발생시 출력
	}finally{
		//반화된 데이터의 사용이 종료되면 close() 메서드를 사용하여 각각의 인스턴스를 종료
		if(pstmt != null) try{pstmt.close();} catch(SQLException e){}
		if(conn != null) try{conn.close();} catch(SQLException e){}
	}
	
%>
<a href = "http://localhost:8088/Chap10/FirstJDBC.jsp">결과확인</a>
</body>
</html>