package model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import beans.BoardDTO;
import beans.ReplyDTO;
import service.Paging;

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
	
	private int getTotalBoard(String type, String search) {
		String sql = "select count(*) as count from board " +
					 "where " + type + " like '%" + search + "%' ";
		
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
	
	public Map<String, Object> selectAll(int reqPage, String type, String search) {
		Paging p = new Paging(reqPage, getTotalBoard(type, search));
		
		String sql = "select * from board " + 
						"where " + type + " like '%" + search + "%' " +
						"order by idx desc " + 
						"offset ? rows " + 
						"fetch first ? rows only";
		
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
			
			Map<String, Object> result = new HashMap<>();
			
			result.put("list", list);
			result.put("p", p);
			
			return result;
			
		} catch (SQLException e) {
			System.out.println("selectAll 예외 : " + e.getMessage());
		
		} finally {
			close();
		}
		
		return null;
	}
	
	public void countUp(int idx) {
		String sql = "update board " 
				+ "set view_count = view_count + 1 "
				+ "where idx = ?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			
			pstmt.executeUpdate();
		} catch(SQLException e ) {
			System.err.println("updateViewCount 예외 " +  e.getMessage());
		} finally {
			close();
		}
	}
	
	private List<ReplyDTO> selectReplyAll(int idx) {
		String sql = "select * from reply where "
				+ "board_idx = ? "
				+ "order by idx desc";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, idx);
			
			rs = pstmt.executeQuery();
			
			List<ReplyDTO> list = new ArrayList<>();
			
			while(rs.next()) {
				ReplyDTO row = new ReplyDTO();
				row.setBoard_idx(rs.getInt("board_idx"));
				row.setContents(rs.getString("contents"));
				row.setIdx(rs.getInt("idx"));
				row.setWrite_date(rs.getDate("write_date"));
				row.setWriter(rs.getString("writer"));
				
				list.add(row);
			}
			return list;
			
		} catch(SQLException e){
			System.err.println("selectReplyAll 예외 " +  e.getMessage());
		} finally {
			close();
		}
		
		return null;
	}
	
	public Map<String, Object> selectOne(int idx) {
		countUp(idx);
		String sql = "select * from board where idx=?";
		
		List<ReplyDTO> rps = selectReplyAll(idx);
		Map<String, Object> result = new HashMap<>();
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, idx);
			
			rs = pstmt.executeQuery();
			rs.next();
			
			result.put("board", mapper(rs));
			result.put("rps", rps);
			
			return result;
			
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
	
	public int insert(BoardDTO input) {
		String sql = "insert into board (title, contents, writer) "
				+ "values (?, ?, ?)";
				
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, input.getTitle());
			pstmt.setString(2, input.getContents());
			pstmt.setString(3, input.getWriter());
			
			return pstmt.executeUpdate();
		} catch(SQLException e) {
			System.err.println("insert 예외 " + e.getMessage());
		} finally {
			close();
		}
		
		return 0;
	}
	
	public int update(BoardDTO input) {
		String sql = "update board "
				+ "set title = ?, contents = ?, writer = ? "
				+ "where idx = ?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, input.getTitle());
			pstmt.setString(2, input.getContents());
			pstmt.setString(3, input.getWriter());
			pstmt.setInt(4, input.getIdx());
			
			return pstmt.executeUpdate();
		} catch(SQLException e) {
			System.err.println("update 예외 " + e.getMessage());
		} finally {
			close();
		}
		return 0;
	}
	

}
