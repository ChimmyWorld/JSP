package model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import beans.BoardDTO;

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
	public List<BoardDTO> selectAll() {
		String sql = "select * from board "
				+ "order by idx desc "
				+ "offset 0 rows "
				+ "fetch first 10 rows only";
		
		try {
			conn = ds.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			List<BoardDTO> list = new ArrayList<>();
			
			while(rs.next()) {
				list.add(mapper(rs));
			}
			
			return list;
			
		} catch (SQLException e) {
			System.err.println("selectAll 예외" + e.getMessage());
		} finally {
			close();
		}
	
		return null;
	}
	
	public BoardDTO selectOne(int idx) {
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
}
