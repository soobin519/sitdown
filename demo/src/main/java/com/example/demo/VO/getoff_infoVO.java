package com.example.demo.VO;

public class getoff_infoVO {
	// 하차정보 등록, 출력 시 사용하기 위한 VO 
	private int id; // index 
	private String trainNo; //열차 id 
	private int carNum; //칸 번호 
	private int seatNum; //좌석 번호 
	private String statnNm; // 현재위치 (승차 위치) 
	private String getoffNm; // 하차역
	private int getoffstatn; // 하차역 Id 
	private int userId; //userId
	
	public getoff_infoVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	public getoff_infoVO(int id, String trainNo, int carNum, int seatNum, String statnNm, String getoffNm,
			int getoffstatn, int userId) {
		super();
		this.id = id;
		this.trainNo = trainNo;
		this.carNum = carNum;
		this.seatNum = seatNum;
		this.statnNm = statnNm;
		this.getoffNm = getoffNm;
		this.getoffstatn = getoffstatn;
		this.userId = userId;
	}

	public String getGetoffNm() {
		return getoffNm;
	}


	public void setGetoffNm(String getoffNm) {
		this.getoffNm = getoffNm;
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



	public int getSeatNum() {
		return seatNum;
	}



	public void setSeatNum(int seatNum) {
		this.seatNum = seatNum;
	}



	public String getStatnNm() {
		return statnNm;
	}



	public void setStatnNm(String statnNm) {
		this.statnNm = statnNm;
	}
	
	public int getGetoffstatn() {
		return getoffstatn;
	}


	public void setGetoffstatn(int getoffstatn) {
		this.getoffstatn = getoffstatn;
	}


	public int getUserId() {
		return userId;
	}



	public void setUserId(int userId) {
		this.userId = userId;
	}


	@Override
	public String toString() {
		return "getoff_infoVO [id=" + id + ", trainNo=" + trainNo + ", carNum=" + carNum + ", seatNum=" + seatNum
				+ ", statnNm=" + statnNm + ", getoffNm=" + getoffNm + ", getoffstatn=" + getoffstatn + ", userId="
				+ userId + "]";
	}

	

}
