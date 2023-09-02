<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC PreparedStatement인서트</title>
</head>
<body>
<%
	//변수 선언
	Connection conn = null;
	/* ResultSet rs = null; */
	PreparedStatement pstmt = null;
	int rowNum;

	try{
		//JDBC드라이버 로딩
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		//데이터베이스 접속
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspbook","jspbook","jspbook");

		
		//SQL문을 실행하기 위한 Pre페어스테이트먼트 사용
		pstmt = conn.prepareStatement(   "INSERT INTO STUDENT (STUDENT_ID, STUDENT_NAME, STUDENT_EMAIL, STUDENT_TEL, DEPARTMENT_ID) " +
									  	 "VALUES (?,?,?,?,?)"     );
				
				
		
		pstmt.setString(1,"20140006");
		pstmt.setString(2,"김연아");
		pstmt.setString(3,"yunakim@email.com");
		pstmt.setString(4,"010-006-0006");
		pstmt.setString(5,"M001");

		
		//PrepareStatement 인스턴스를 통해 실행한 SLQ문 실행 결과를REsul셋에 반환
		rowNum = pstmt.executeUpdate();
		
		out.println(rowNum+"개의 행이 삽입됨");

		
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