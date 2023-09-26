package model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import beans.PersonDTO;

public class PersonDAO {
	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@192.168.1.100:1521:xe";
	private String user = "c##itbank";
	private String password = "it";
	
	private Connection conn;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public PersonDAO() {
		try {
			Class.forName(driver);
			
		} catch (ClassNotFoundException e) {
			System.out.println("생성자 예외 : " + e.getMessage());
		}
	}
	
	private void close() {
		try {
			if (rs != null) 	rs.close();
			if (stmt != null) 	stmt.close();
			if (pstmt != null) 	pstmt.close();
			if (conn != null) 	conn.close();
			
		} catch(Exception e) {}
	}
	
	public PersonDTO mapping(ResultSet rs) throws SQLException {
		PersonDTO row = new PersonDTO();
		
		Date date = rs.getDate("birth");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		String birth = sdf.format(date);
		
		System.out.println(birth);
		
		row.setBirth(birth);
		row.setHeight(rs.getDouble("height"));
		row.setName(rs.getString("name"));
		
		return row;
	}
	
	public List<PersonDTO> selectAll() {
		String sql = "select * from person";
		
		try {
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			List<PersonDTO> list = new ArrayList<>();
			
			while (rs.next()) {
				PersonDTO row = mapping(rs);
				list.add(row);
			}
			
			return list;
		} catch (SQLException e) {
			System.out.println("selectAll 예외 : " + e.getMessage());
			
		} finally {
			close();
		}
		
		return null;
	}

	public List<PersonDTO> selectName(String name) {
		String sql = "select * from person where name like '%" + name + "%'";
		
		try {
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			List<PersonDTO> list = new ArrayList<>();
			
			while (rs.next()) {
				PersonDTO row = mapping(rs);
				list.add(row);
			}
			
			return list;
			
		} catch (SQLException e) {
			System.out.println("selectName 예외 : " + e.getMessage());
			
		} finally {
			close();
		}
		
		return null;
	}
	
	public int insert(PersonDTO per) {
		try {
			String sql = "insert into person values(?, ?, ?)";
			
			conn = DriverManager.getConnection(url, user, password);
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, per.getName());
			pstmt.setDouble(2, per.getHeight());
			pstmt.setDate(3,  per.getBirth());
			
			int row = pstmt.executeUpdate();
			
			return row;
		} catch (SQLException e) {
			System.err.println("inser 예외" + e.getMessage());
		} finally {
			close();
		}
			
		return 0;
	}
	
	public int delete(String name) {
		try { 
			String sql = "delete from person where name = ?";
			
			conn = DriverManager.getConnection(url, user, password);
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, name);
			int row = pstmt.executeUpdate();
			
			return row;
			
		} catch (SQLException e) {
			System.err.println("delete 예외" + e.getMessage());
		} finally {
			close();
		}
		
		return 0;
	}
	
	public int update(PersonDTO chgPer, String fName) {
		try {
			String sql = "update person "
					+ "set "
					+ "name = ?, "
					+ "height = ?, "
					+ "birth = ? "
					+ "where name = ?";
					
			conn = DriverManager.getConnection(url, user, password);
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, chgPer.getName());
			pstmt.setDouble(2, chgPer.getHeight());
			pstmt.setDate(3, chgPer.getBirth());
			pstmt.setString(4, fName); 
			
			int row = pstmt.executeUpdate();
			
			return row;
			
		} catch (SQLException e) {
			System.err.println("update 예외 : " + e.getMessage());
		} finally {
			close();
		}
		
		return 0;
	}
	
}


