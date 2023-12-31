package model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import beans.PersonVO;

public class PersonDAO extends DAO{
	
	private PersonVO mapper(ResultSet rs) throws SQLException {
		PersonVO row = new PersonVO();
		
		row.setBirth(rs.getDate("birth"));
		row.setHeight(rs.getDouble("height"));
		row.setName(rs.getString("name"));
		
		return row;
	}
	
	public List<PersonVO> selectAll() {
		String sql = "select * from person";
		
		try {
			conn = ds.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			List<PersonVO> list = new ArrayList<>();
			
			while (rs.next()) {
				PersonVO row = mapper(rs);
				list.add(row);
			}
			
			return list;
		} catch (SQLException e) {
			System.err.println("selectAll 예외" + e.getMessage());
		} finally {
			close();
		}
		
		return null;
	}
}
