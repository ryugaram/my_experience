package com.ryu.vo;

public class MemberVO {

	private String name;
	private int age;
	private String sex;
	private String tel;
	private String home;
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
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getHome() {
		return home;
	}
	public void setHome(String home) {
		this.home = home;
	}
	@Override
	public String toString() {
		return "MemberVO [name=" + name + ", age=" + age + ", sex=" + sex + ", tel=" + tel + ", home=" + home + "]";
	}
	
	
}
