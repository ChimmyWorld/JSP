package model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import beans.BoardDTO;

public class BoardDAO extends DAO{
	public BoardDTO mapper(ResultSet rs) throws SQLException {
		BoardDTO row = new BoardDTO();
		
		row.setContents(rs.getString("contents"));
		row.setIdx(rs.getInt("idx"));
		row.setTitle(rs.getString("title"));
		row.setView_count(rs.getInt("view_count"));
		row.setWrite_date(rs.getDate("write_date"));
		row.setWriter(rs.getString("writer"));
		
		return row;
	}
	
	public List<BoardDTO> selectAll(){
		String sql = "select * from board";
		
		try {
			conn = ds.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			ArrayList<BoardDTO> list = new ArrayList<>();
			
			while(rs.next()) {
				BoardDTO row = mapper(rs);
				list.add(row);
			}
			return list;
			
		} catch (SQLException e) {
			System.err.println("selectAll 예외 " + e.getMessage());
		} finally {
			close();
		}

		return null;
	}
	
	public BoardDTO selectOne(int idx) {
		String sql = "select * from board where idx=?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, idx);
			
			rs = pstmt.executeQuery();
			rs.next();
			
			BoardDTO row = mapper(rs);
			
			return row;			
			
		} catch (SQLException e ) {
			System.err.println("selectOne 예외" + e.getMessage());
		} finally {
			close();
		}
		
		return null;
	}
	
	public int delete(int idx) {
		String sql = "delete from board where idx=?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			
			return pstmt.executeUpdate();
		} catch(SQLException e) {
			System.err.println("delete 예외 " + e.getMessage());
		} finally {
			close();
		}
		
		return 0;
	}

}
