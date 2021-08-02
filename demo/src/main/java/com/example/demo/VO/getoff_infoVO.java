package com.example.demo.VO;

public class getoff_infoVO {
	// 하차정보 등록, 출력 시 사용하기 위한 VO 
	private int id; // index 
	private String trainNo; //열차 id 
	private int carNum; //칸 번호 
	private int sitNum; //좌석 번호 
	private String statnNm; // 현재위치 (승차 위치) 
	private String getoffStn; // 하차역 
	private int userId; //userId
	
	
	public getoff_infoVO(int id, String trainNo, int carNum, int sitNum, String statnNm, String getoffStn, int userId) {
		super();
		this.id = id;
		this.trainNo = trainNo;
		this.carNum = carNum;
		this.sitNum = sitNum;
		this.statnNm = statnNm;
		this.getoffStn = getoffStn;
		this.userId = userId;
	}


	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getTrainNo() {
		return trainNo;
	}



	public void setTrainNo(String trainNo) {
		this.trainNo = trainNo;
	}



	public int getCarNum() {
		return carNum;
	}



	public void setCarNum(int carNum) {
		this.carNum = carNum;
	}



	public int getSitNum() {
		return sitNum;
	}



	public void setSitNum(int sitNum) {
		this.sitNum = sitNum;
	}



	public String getStatnNm() {
		return statnNm;
	}



	public void setStatnNm(String statnNm) {
		this.statnNm = statnNm;
	}



	public String getGetoffStn() {
		return getoffStn;
	}



	public void setGetoffStn(String getoffStn) {
		this.getoffStn = getoffStn;
	}



	public int getUserId() {
		return userId;
	}



	public void setUserId(int userId) {
		this.userId = userId;
	}



	@Override
	public String toString() {
		return "getoff_infoVO [id=" + id + ", trainNo=" + trainNo + ", carNum=" + carNum + ", sitNum=" + sitNum
				+ ", statnNm=" + statnNm + ", getoffStn=" + getoffStn + ", userId=" + userId + "]";
	}
	
	
	

}
