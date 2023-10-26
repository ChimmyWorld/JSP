package model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import beans.BoardDTO;
import beans.RecommendDTO;
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
		row.setCnt(rs.getInt("cnt"));
		
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
	
	public Map<String, Object> selectAll(int reqPage, String type, String search, String order) {
		Paging p = new Paging(reqPage, getTotalBoard(type, search));
		
		String sql = "select * from BoardView " + 
						"where " + type + " like '%" + search + "%' " +
						"order by " + order + " desc " + 
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
	
	public List<ReplyDTO> selectMyReply(String writer){
		String sql = "select R.*, B.title " + 
			    "from reply R inner join board B " + 
			    "on board_idx = B.idx " +
			    "where R.writer = ?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, writer);
			
			rs = pstmt.executeQuery();
			
			List<ReplyDTO> list = new ArrayList<>();
			
			while(rs.next()) {
				ReplyDTO row = new ReplyDTO();
				row.setBoard_idx(rs.getInt("board_idx"));
				row.setTitle(rs.getString("title"));
				row.setContents(rs.getString("contents"));
				row.setWrite_date(rs.getDate("write_date"));
				
				list.add(row);
			} 
			
			return list;
			
			} catch (SQLException e) {
				System.err.println("selectMyReply 예외 " + e.getMessage());
			} finally {
				close();
		}
		
		return null;
	}
	
	public Map<String, Object> selectOne(int idx) {
		countUp(idx);
		String sql = "select * from BoardView where idx = ?";
		
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
	
	public int deleteReply(int idx) {
		String sql = "delete from reply where idx = ?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			
			return pstmt.executeUpdate();
		} catch(SQLException e ) {
			System.err.println("deleteReply 예외 " + e.getMessage());
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
	
	public int insertReply(ReplyDTO input) {
		String sql = "insert into reply (contents, writer, board_idx) "
				+ "values (?, ?, ?)";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, input.getContents());
			pstmt.setString(2, input.getWriter());
			pstmt.setInt(3, input.getBoard_idx());
			
			return pstmt.executeUpdate();
		} catch(SQLException e) {
			System.err.println("insertReply 예외" + e.getMessage());
		} finally {
			close();
		}
		
		return 0;
	}
	
	public int update(BoardDTO input) {
		String sql = "update board "
				+ "set title = ?, contents = ? "
				+ "where idx = ?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, input.getTitle());
			pstmt.setString(2, input.getContents());
			pstmt.setInt(3, input.getIdx());
			
			return pstmt.executeUpdate();
		} catch(SQLException e) {
			System.err.println("update 예외 " + e.getMessage());
		} finally {
			close();
		}
		return 0;
	}
	
	public int selectRecommend(int board_idx, String nick) {
		String sql = "select good from recommend where board_idx = ? "
				+ "and nick =?" ;
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, board_idx);
			pstmt.setString(2, nick);
			
			rs = pstmt.executeQuery();
			rs.next();
			
			return rs.getInt("good");
			
		} catch(SQLException e) {
			System.err.println("selectRecommend 예외: " + e.getMessage());
		} finally {
			close();
		}
	
		return 0;
	}
	
	public int selectRecCnt(int board_idx, int good) {
		String sql = "select count(*) from recommend " + 
				"where board_idx = ? and good = ?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, board_idx);
			pstmt.setInt(2, good);
			
			rs = pstmt.executeQuery();
			rs.next(); 
			
			return rs.getInt("count(*)");
		} catch(SQLException e) {
			System.err.println("selectGoodCnt 예외" + e.getMessage());
		} finally {
			close();
		}
		
		return 0;
	}
	
	
	public int insertRec(RecommendDTO input) {
		String sql = "insert into recommend values(?, ?, ?)";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, input.getBoard_idx());
			pstmt.setString(2, input.getNick());
			pstmt.setInt(3, input.getGood());
			
			return pstmt.executeUpdate();
		} catch(SQLException e) {
			System.err.println("insertRec 예외 " + e.getMessage());
		} finally {
			close();
		}
		
		return 0;
		
	}
	
	public int deleteRec(RecommendDTO input) {
		String sql = "delete recommend where board_idx = ? and nick = ?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, input.getBoard_idx());
			pstmt.setString(2, input.getNick());
			
			return pstmt.executeUpdate();
		} catch(SQLException e ) {
			System.err.println("deleteRec 예외 " + e.getMessage());
		} finally {
			close();
		}
		
		return 0;
	}
	
	public int updateRec(RecommendDTO input) {
		String sql = "update recommend set good=? "
				+ "where board_idx =? and nick =?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, input.getGood());
			pstmt.setInt(2, input.getBoard_idx());
			pstmt.setString(3, input.getNick());
			
			return pstmt.executeUpdate();
		} catch(SQLException e) {
			System.err.println("updateRec 예외" + e.getMessage());
		} finally {
			close();
		}
		
		return 0;	
	}
}
