package com.example.demo.DAO;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.VO.lineVO;
import com.example.demo.VO.stationVO;

@Repository
public interface subwayDAO {
	
	//노선 리스트 가져오기 
	public List<lineVO> selectLine();
	
	//하차역 리스트 가져오기 
	public List<stationVO> selectStation(int lineNum);
	
}
