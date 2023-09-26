package model;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DAO {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@192.168.1.100:1521:xe";
		String user = "c##itbank";
		String password = "it";
		
		public DAO() {
			try {
				Class.forName(driver);
				System.out.println("드라이버 로드 성공");
			} catch (ClassNotFoundException e) {
				System.out.println("생성자 예외:" + e.getMessage());
			}
		}
		
		public String test() {
			return "test";
		}
		
	
}

