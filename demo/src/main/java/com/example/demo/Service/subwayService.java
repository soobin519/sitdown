package com.example.demo.Service;

import java.util.HashMap;
import java.util.List;

import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Service;

import com.example.demo.VO.getoff_infoVO;
import com.example.demo.VO.lineVO;
import com.example.demo.VO.stationVO;

@Service
public interface subwayService {
	// 노선 리스트 불러오기
	public List<lineVO> selectLine();
	
	//하차역 리스트 불러오기 
	public List<stationVO> selectStation(HashMap map);
	
	//하차 정보 등록하기 
	public int insertGetoffInfo(getoff_infoVO getoff) throws ParseException;
	
	//하차 정보 가져오기 
	public getoff_infoVO selectMySeatInfo(HashMap map);
	
	//하차 정보 전체 조회
	public List<getoff_infoVO> selectGetoffInfo(HashMap map);
	
	//하차 정보 중복 체크 
	public int checkDuplicatedInfo(int userId);
	
	//이미 지나간 열차 삭제 
	public int deletePassingTrain();
}
