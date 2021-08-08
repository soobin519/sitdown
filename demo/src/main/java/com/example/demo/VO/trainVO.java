package com.example.demo.VO;

public class trainVO {
	private int subwayId; //노선번호 
	private String subwayNm; //노선이름 
	private int trainNo; // 열차번호 
	private String statnNm; //현재 위치 
	private String statnTmn; //종착역 
	private int statnNmId; //현재 위치 
	private int getoffstatn; //목적지
	private String getoffNm;
	private int carNum;
	
	
	public trainVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	

	public trainVO(int subwayId, String subwayNm, int trainNo, String statnNm, String statnTmn, int carNum,int statnNmId,int getoffstatn, String getoffNm) {
		super();
		this.subwayId = subwayId;
		this.subwayNm = subwayNm;
		this.trainNo = trainNo;
		this.statnNm = statnNm;
		this.statnTmn = statnTmn;
		this.carNum = carNum;
		this.statnNmId = statnNmId;
		this.getoffstatn = getoffstatn;
		this.getoffNm = getoffNm;
	}


	@Override
	public String toString() {
		return "trainVO [subwayId=" + subwayId + ", subwayNm=" + subwayNm + ", trainNo=" + trainNo + ", statnNm="
				+ statnNm + ", statnTmn=" + statnTmn + ", statnNmId=" + statnNmId + ", getoffstatn=" + getoffstatn
				+ ", getoffNm=" + getoffNm + ", carNum=" + carNum + "]";
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
	public String getStatnTmn() {
		return statnTmn;
	}
	public void setStatnTmn(String statnTmn) {
		this.statnTmn = statnTmn;
	}
	
	public int getCarNum() {
		return carNum;
	}
	public void setCarNum(int carNum) {
		this.carNum = carNum;
	}

	public int getStatnNmId() {
		return statnNmId;
	}

	public void setStatnNmId(int statnNmId) {
		this.statnNmId = statnNmId;
	}

	public int getGetoffstatn() {
		return getoffstatn;
	}

	public void setGetoffstatn(int getoffstatn) {
		this.getoffstatn = getoffstatn;
	}

	public String getGetoffNm() {
		return getoffNm;
	}

	public void setGetoffNm(String getoffNm) {
		this.getoffNm = getoffNm;
	}
	
	
	
	
	
	
}
