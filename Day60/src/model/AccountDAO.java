package model;

import java.security.NoSuchAlgorithmException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import beans.AccountDTO;
import service.SHA512;


public class AccountDAO extends DAO {
	
	private AccountDTO mapper(ResultSet rs) throws SQLException {
		AccountDTO row = new AccountDTO();
		
		row.setEmail(rs.getString("email"));
		row.setIdx(rs.getInt("idx"));
		row.setJoin_date(rs.getDate("join_date"));
		row.setNick(rs.getString("nick"));
		row.setUserid(rs.getString("userid"));
		row.setUserpw(rs.getString("userpw"));
		
		return row;
	}
	

	public Map<String, Object> selectAll() {
		String sql = "select * from account "
						+ "order by idx desc";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			List<AccountDTO> list = new ArrayList<>();
			
			while (rs.next()) {
				list.add(mapper(rs));
			}
			
			Map<String, Object> result = new HashMap<>();
			result.put("list", list);
			
			return result;
			
		} catch (SQLException e) {
			System.out.println("selectAll 예외 : " + e.getMessage());
			
		} finally {
			close();
		}
		
		return null;
	}
	
	public AccountDTO selectOne(AccountDTO input) {
		String sql = "select * from account "
				+ "where userid = ? and userpw = ?";
		
		try {
			String hash = SHA512.getHash(input.getUserpw());
			
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, input.getUserid());
			pstmt.setString(2, hash);
			
			rs = pstmt.executeQuery();
			rs.next();
			
			return mapper(rs);
		} catch (SQLException | NoSuchAlgorithmException e) {
			System.err.println("selectOne 예외 : " + e.getMessage());
		} finally {
			close();
		}
		
		return null;
	}
	
	public int insert(AccountDTO input) {
		String sql = "insert into account"
				+ "(userid, nick, userpw, email) values "
				+ "(?, ?, ?, ? )" ;
		
		try {
			String hash = SHA512.getHash(input.getUserpw());
			
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, input.getUserid());
			pstmt.setString(2, input.getNick());
			pstmt.setString(3, hash);
			pstmt.setString(4, input.getEmail());
			
			 return pstmt.executeUpdate();
			
		} catch (SQLException | NoSuchAlgorithmException e) {
			System.err.println("insert 예외 " +  e.getMessage());
		} finally {
			close();
		}
		
		return 0;
	}
	
}