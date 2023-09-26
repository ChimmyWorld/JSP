package model;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DAO {
	protected String driver = "oracle.jdbc.driver.OracleDriver";
	protected String url = "jdbc:oracle:thin:@192.168.1.100:1521:xe"; 
	protected String user = "c##itbank";
	protected String password = "it";
	
	protected Connection conn;
	protected Statement stmt;
	protected PreparedStatement pstmt;
	protected ResultSet rs;
	
	public DAO() {
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			System.out.println("생성자 예외: " +  e.getMessage());
		}
	}
	public void close() {
		try {
			if (rs != null )  rs.close();
			if (stmt != null) stmt.close();
			if (pstmt != null) pstmt.close();
			if (conn != null) conn.close();
		
		} catch(Exception e) {}
	}
	
	public String test() {
		String sql = "select banner from v$version";
		
		try {
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			rs.next();
			
			return rs.getString("banner");
			
		} catch (SQLException e) {
			System.out.println("test 예외 발생: " + e.getMessage());
		} finally {
			close();
		}
		return null;
	
	}
}	
