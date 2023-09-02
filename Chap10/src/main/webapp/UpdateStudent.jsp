<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC Update</title>
</head>
<body>
<%
	//변수 선언
	Connection conn = null;
	Statement stmt = null;
	int rowNum;
	
	try{
		//JDBC드라이버 로딩
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		//데이터베이스 접속
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspbook","jspbook","jspbook");

		//SQL 문을 실행하기 위한 statmenet 인스턴스 홱득
		stmt= conn.createStatement();
		
		//Statement 인스턴스를 통해 실햏나 SQL문 실행
		rowNum = stmt.executeUpdate("UPDATE STUDENT SET DEPARTMENT_ID = 'M003'"+
									"WHERE STUDENT_ID = '20140006'");
		
		out.println(rowNum+"개의 행이 수정되었습니다."+"<hr/>");
	}
	catch(SQLException e){
		//에러발생
		out.println(e); //콘솔에 에러발생시 출력
	}finally{
		if(stmt != null) try{stmt.close();} catch(SQLException e){}
		if(conn != null) try{conn.close();} catch(SQLException e){}
	}
	
%>
<a href = "http://localhost:8088/Chap10/FirstJDBC.jsp">결과확인</a>
</body>
</html>