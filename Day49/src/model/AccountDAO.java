package model;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import beans.AccountVO;

public class AccountDAO extends DAO{
	
	private AccountVO mapper(ResultSet rs) throws SQLException {
		AccountVO row = new AccountVO();
		
		row.setIdx(rs.getInt("idx"));
		row.setEmail(rs.getString("email"));
		row.setNick(rs.getString("nick"));
		row.setUserid(rs.getString("userid"));
		row.setUserpw(rs.getString("userpw"));
		row.setJoin_date(rs.getDate("join_date"));
		
		return row;
	}

	public List<AccountVO> selectAll() {
		String sql = "select * from account order by idx desc";
		
		try {
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			List<AccountVO> list = new ArrayList<>();
			
			while (rs.next()) {
				AccountVO row = mapper(rs);
				list.add(row);
			}
			
			return list;
		} catch (SQLException e ) {
			System.err.println("selectAll 예외:" +  e.getMessage());
		} finally {
			close();
		}
		
		return null;
	}
	
	public AccountVO selectOne(AccountVO input){
		String sql = "select * "
				+ "from account where "
				+ "userid = ? "
				+ "and userpw = ?";
		
		
		
		try {
			conn = DriverManager.getConnection(url, user, password);
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, input.getUserid());
			pstmt.setString(2, input.getUserpw());
			//set 자료형 (index, 데이터);
			
			rs = pstmt.executeQuery();
			rs.next();
			
			AccountVO row = mapper(rs);
			
			return row;
			
		} catch (SQLException e) {
			System.err.println("selectOne 예외:" + e.getMessage());
		} finally {
			close();
		}
		
		
		return null;
	}
	
	public int insert(AccountVO acc) {
		String sql = "insert into account values(default, "
				+ "?, ?, ?, ? , default) ";
		
		try {
			conn = DriverManager.getConnection(url, user, password);
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, acc.getUserid());
			pstmt.setString(2, acc.getUserpw());
			pstmt.setString(3, acc.getNick());
			pstmt.setString(4, acc.getEmail());
			
			int row = pstmt.executeUpdate();
			
			return row;
		} catch (SQLException e) {
			System.err.println("insert 예외 발생" + e.getMessage());
		} finally {
			close();
		}
		
		return 0;
	}
	
	public int delete(int idx) {
		try {
			String sql = "delete from account where idx = ?";
			
			conn = DriverManager.getConnection(url, user, password);
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, idx);
			int row = pstmt.executeUpdate();
			
			return row;
			
		} catch (SQLException e ) {
			System.err.println("delete 예외 " + e.getMessage());
		} finally {
			close();
		}
		
		return 0;
	}
	
	public int update(AccountVO input) {
		
		String sql = "update account "
						+ "set "
							+ "userpw = ?, email = ? "
						+ "where idx = ?";
		
		try {
			conn = DriverManager.getConnection(url, user, password);
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, input.getUserpw());
			pstmt.setString(2, input.getEmail());
			pstmt.setInt(3, input.getIdx());
			
			return pstmt.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println("update 예외 : " + e.getMessage());
			
		} finally {
			close();
		}
		
		return 0;
	}
}
