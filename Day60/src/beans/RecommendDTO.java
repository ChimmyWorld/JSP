package beans;

/*
BOARD_IDX    NUMBER        
NICK         VARCHAR2(100) 
GOOD         NUMBER        
 */

public class RecommendDTO {
	private int board_idx, good, isCheck;
	private String nick;
	public int getBoard_idx() {
		return board_idx;
	}
	public void setBoard_idx(int board_idx) {
		this.board_idx = board_idx;
	}
	public int getGood() {
		return good;
	}
	public void setGood(int good) {
		this.good = good;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public int getIsCheck() {
		return isCheck;
	}
	public void setIsCheck(int isCheck) {
		this.isCheck = isCheck;
	}
	
}
