package beans;
/*
 IDX       NOT NULL NUMBER        
USERID    NOT NULL VARCHAR2(20)  
USERPW    NOT NULL VARCHAR2(20)  
NICK      NOT NULL VARCHAR2(100) 
EMAIL     NOT NULL VARCHAR2(100) 
JOIN_DATE          DATE     
 */

import java.sql.Date;

public class AccountVO {
	private int idx;
	private String userid;
	private String userpw;
	private String nick;
	private String Email;
	private Date join_date;
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpw() {
		return userpw;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public Date getJoin_date() {
		return join_date;
	}
	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}
	
	
	
	
	
}
