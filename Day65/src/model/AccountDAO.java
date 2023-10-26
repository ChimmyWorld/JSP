package model;

import java.sql.ResultSet;
import java.sql.SQLException;

import beans.AccountDTO;

public class AccountDAO extends DAO{
	public AccountDTO mapper(ResultSet rs) throws SQLException {
		AccountDTO row = new AccountDTO();
		
		row.setEmail(rs.getString("email"));
		row.setIdx(rs.getInt("idx"));
		row.setJoin_date(rs.getDate("join_date"));
		row.setNick(rs.getString("nick"));
		row.setUserid(rs.getString("userid"));
		row.setUserpw(rs.getString("userpw"));
		
		return row;
	}
	
	public AccountDTO selectOne(AccountDTO input) {
		String sql = "select * from account "
				+ "where userid=? and userpw=? ";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, input.getUserid());
			pstmt.setString(2, input.getUserpw());
			
			rs = pstmt.executeQuery();
			rs.next();
			
			return mapper(rs); 
		} catch (SQLException e) {
			System.err.println("selectOne 예외" + e.getMessage());
		} finally {
			close();
		}
		
		return null;
	}
	
}
