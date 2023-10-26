package beans;

import java.util.Date;

/*
IDX        NOT NULL NUMBER        
TITLE      NOT NULL VARCHAR2(200) 
CONTENTS   NOT NULL CLOB          
WRITER     NOT NULL VARCHAR2(100) 
VIEW_COUNT          NUMBER        
WRITE_DATE          DATE
*/
public class BoardDTO {
  private int idx;
  private String title;
  private String contents;
  private String writer;
  private int view_count;
  private Date write_date;
  
public int getIdx() {
	return idx;
}
public void setIdx(int idx) {
	this.idx = idx;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getContents() {
	return contents;
}
public void setContents(String contents) {
	this.contents = contents;
}
public String getWriter() {
	return writer;
}
public void setWriter(String writer) {
	this.writer = writer;
}
public int getView_count() {
	return view_count;
}
public void setView_count(int view_count) {
	this.view_count = view_count;
}
public Date getWrite_date() {
	return write_date;
}
public void setWrite_date(Date write_date) {
	this.write_date = write_date;
}
  
  
}
