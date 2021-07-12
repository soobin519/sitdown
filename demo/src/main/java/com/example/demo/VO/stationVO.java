package com.example.demo.VO;

public class stationVO {
	private int id;
	private String station;
	private int lineNum;
	
	public stationVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public stationVO(int id, String station, int lineNum) {
		super();
		this.id = id;
		this.station = station;
		this.lineNum = lineNum;
	}
	
	@Override
	public String toString() {
		return "stationVO [id=" + id + ", station=" + station + ", lineNum=" + lineNum + "]";
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getStation() {
		return station;
	}
	public void setStation(String station) {
		this.station = station;
	}
	public int getLineNum() {
		return lineNum;
	}
	public void setLineNum(int lineNum) {
		this.lineNum = lineNum;
	}
	
	
}
