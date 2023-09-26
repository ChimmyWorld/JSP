<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02.jsp</title>
</head>
<body>
	<%
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@192.168.1.100:1521:xe";
		String user = "c##itbank";
		String password = "it";
		
		// 라이브러리 추가 디버그
		// Class.forName(driver);
		
		String sql= "select banner from v$version";
		
		Connection conn = DriverManager.getConnection(url, user, password);
		Statement stmt = conn.createStatement();		
		ResultSet rs = stmt.executeQuery(sql);
		
		rs.next();
		
		String banner = rs.getString("banner");
		
		rs.close();
		stmt.close();
		conn.close();
		
	%>
	
	<h1>JDBC Test</h1>
	<hr>
	
	<h4>결과: <%=banner %></h4>
	
</body>
</html>