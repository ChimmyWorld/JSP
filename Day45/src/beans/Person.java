package beans;
/*
 	Java Beans
 	- 필드는 private, 메서드는 public
 	- 기본 생성자 필수
 	- getter, setter 작성
 */
public class Person {
	private String name;
	private int age;
	private double height;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public double getHeight() {
		return height;
	}
	public void setHeight(double height) {
		this.height = height;
	}
	
}
