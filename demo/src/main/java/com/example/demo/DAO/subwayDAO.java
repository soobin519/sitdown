package com.example.demo.DAO;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.VO.getoff_infoVO;
import com.example.demo.VO.lineVO;
import com.example.demo.VO.stationVO;

@Repository
public interface subwayDAO {
	
	//노선 리스트 가져오기 
	public List<lineVO> selectLine();
	
	//하차역 리스트 가져오기 
	public List<stationVO> selectStation(int lineNum);
	
	//하차정보 등록하기 
	public int insertGetoffInfo(getoff_infoVO getoff);
	
	//하차정보 가져오기
	public getoff_infoVO selectMySeatInfo(HashMap map);
	
	//하차정보 전체 조회
	public List<getoff_infoVO> selectGetoffInfo(HashMap map);
	
	//하차정보 중복 체크 
	public int checkDuplicatedInfo(int userId);
	
}
