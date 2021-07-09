package com.example.demo.VO;

public class userVO {
	private String name;
	private String userId;
	private String password;
	private String email;
	
	
	public userVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public userVO(String name, String userId, String password, String email) {
		super();
		this.name = name;
		this.userId = userId;
		this.password = password;
		this.email = email;
	}
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUserId() {
		return userId;

	}
	public void setUserId(String userId) {
		this.userId = userId;

	}
	public void setId(String userId) {
		this.userId = userId;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	

	@Override
	public String toString() {
		return "userVO [userId=" + userId + ", password=" + password + "]";
	}

	
	
}
