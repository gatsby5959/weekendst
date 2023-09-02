<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC첫실행</title>
</head>
<body>
<% 
//JDBC드라이버 로딩

Class.forName("com.mysql.cj.jdbc.Driver");

//JDBC URL계정과 비리번호를 지정하여 커넷션 인스턴스를 통해 데이터베이스 접속

Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspbook","jspbook","jspbook");

//SQL 문을 실행하기 위한 statmenet 인스턴스 홱득
Statement stmt= conn.createStatement();

ResultSet rs = stmt.executeQuery("select * from STUDENT");

while(rs.next()){
	out.println(rs.getString(1)+"|");	out.println(rs.getString(2)+"|");	out.println(rs.getString(3)+"|");	
	out.println(rs.getString(4)+"|");	out.println(rs.getString(5)+"<br/>");
}


rs.close();
stmt.close();
conn.close();

%>
</body>
</html>