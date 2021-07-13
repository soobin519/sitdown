package com.example.demo.VO;

public class trainVO {
	private int subwayId; //노선번호 
	private String subwayNm; //노선이름 
	private int trainNo; // 열차번호 
	private String statnNm; //현재 위치 
	private String statnTnm; //목적지
	private int carNum;
	
	
	public trainVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public trainVO(int subwayId, String subwayNm, int trainNo, String statnNm, String statnTnm, int carNum) {
		super();
		this.subwayId = subwayId;
		this.subwayNm = subwayNm;
		this.trainNo = trainNo;
		this.statnNm = statnNm;
		this.statnTnm = statnTnm;
		this.carNum = carNum;
	}

	@Override
	public String toString() {
		return "trainVO [subwayId=" + subwayId + ", subwayNm=" + subwayNm + ", trainNo=" + trainNo + ", statnNm="
				+ statnNm + ", statnTnm=" + statnTnm + ", carNum="+ carNum +"]";
	}
	
	public int getSubwayId() {
		return subwayId;
	}
	public void setSubwayId(int subwayId) {
		this.subwayId = subwayId;
	}
	public String getSubwayNm() {
		return subwayNm;
	}
	public void setSubwayNm(String subwayNm) {
		this.subwayNm = subwayNm;
	}
	public int getTrainNo() {
		return trainNo;
	}
	public void setTrainNo(int trainNo) {
		this.trainNo = trainNo;
	}
	public String getStatnNm() {
		return statnNm;
	}
	public void setStatnNm(String statnNm) {
		this.statnNm = statnNm;
	}
	public String getStatnTnm() {
		return statnTnm;
	}
	public void setStatnTnm(String statnTnm) {
		this.statnTnm = statnTnm;
	}
	
	public int getCarNum() {
		return carNum;
	}
	public void setCarNum(int carNum) {
		this.carNum = carNum;
	}
	
	
	
}
