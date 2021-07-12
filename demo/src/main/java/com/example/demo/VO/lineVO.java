package com.example.demo.VO;

public class lineVO {
	private int id;
	private String line;
	
	
	public lineVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public lineVO(int id, String line) {
		super();
		this.id = id;
		this.line = line;
	}
	
	@Override
	public String toString() {
		return "lineVO [id=" + id + ", line=" + line + "]";
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLine() {
		return line;
	}
	public void setLine(String line) {
		this.line = line;
	}
	
	
	
}
