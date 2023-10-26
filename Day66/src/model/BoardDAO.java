package model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import beans.BoardDTO;
import service.Paging;

public class BoardDAO extends DAO{
	
	public BoardDTO mapper(ResultSet rs) throws SQLException{
		BoardDTO row = new BoardDTO();
		
		row.setContents(rs.getString("contents"));
		row.setWrite_date(rs.getDate("write_date"));
		row.setIdx(rs.getInt("idx"));
		row.setTitle(rs.getString("title"));
		row.setView_count(rs.getInt("view_count"));
		row.setWriter(rs.getString("writer"));
		
		return row;
	}
	
	public int getTotalBoard() {
		String sql = "select count(*) as count from board ";
				
		try {
			conn = ds.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			rs.next();
			
			return rs.getInt("count");
			
		} catch (SQLException e) {
			System.out.println("getTotalBoard 예외 " + e.getMessage());
		} finally {
			close();
		}
		
		return 0;
	}
	
	public List<BoardDTO> selectAll(Paging p) {
		String sql = "select * from board "
				+ "order by idx desc "
				+ "offset ? rows "
				+ "fetch first ? rows only";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, p.getOffset());
			pstmt.setInt(2, p.getPerBoard());
			
			rs = pstmt.executeQuery();
			
			List<BoardDTO> list = new ArrayList<>();
			
			while (rs.next()) {
				list.add(mapper(rs));
			}
			
			return list;
			
		} catch(SQLException e) {
			System.out.println("selectAll 예외 : " + e.getMessage());
			
		} finally {
			close();
		}
		
		return null;
	}
	
	public BoardDTO selectOne(int idx) {
		countUp(idx);
		
		String sql = "select * from board "
				+ "where idx = ?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, idx);
			
			rs = pstmt.executeQuery();
			rs.next();
			
			return mapper(rs);
		} catch (SQLException e){
			System.err.println("selectOne 예외" + e.getMessage());
		} finally {
			close();
		}
		
		return null;
	}
	
	public int insert(BoardDTO input) {
		String sql = "insert into "
				+ "board(title, contents, writer) "
				+ "values(?, ?, ?)";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, input.getTitle());
			pstmt.setString(2, input.getContents());
			pstmt.setString(3, input.getWriter());
			
			return pstmt.executeUpdate();
			
		} catch (SQLException e) {
			System.err.println("insert 예외" + e.getMessage());
		} finally {
			close();
		}
		return 0;
	}
	
	public int update(BoardDTO input) {
		String sql = "update board "
				+ "set title=?, contents=? " 
				+ "where idx = ?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, input.getTitle());
			pstmt.setString(2, input.getContents());
			pstmt.setInt(3, input.getIdx());
			
			return pstmt.executeUpdate();
			
		} catch (SQLException e) {
			System.err.println("update 예외" + e.getMessage());
		} finally {
			close();
		}
		
		return 0;
	}
	
	public int delete(int idx) {
		String sql = "delete from board where idx =?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, idx);
			
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			System.err.println("delete 예외" + e.getMessage());
		} finally {
			close();
		}
		
		return 0;
	}
	
	public int countUp(int idx) {
		String sql = "update board "
				+ "set view_count = view_count + 1 "
				+ "where idx = ?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, idx);
			
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			System.err.println("countUp 예외" + e.getMessage());
		} finally {
			close();
		}
		
		return 0;
	}
	
	
}
