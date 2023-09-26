package beans;

import java.sql.Date;

public class PersonDTO {
	private String name;
	private double height;
	private Date birth;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getHeight() {
		return height;
	}
	public void setHeight(double height) {
		this.height = height;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = Date.valueOf(birth);
	}
	
}
