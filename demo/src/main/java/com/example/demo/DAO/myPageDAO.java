package com.example.demo.DAO;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.VO.getoff_infoVO;
import com.example.demo.VO.lineVO;
import com.example.demo.VO.stationVO;

@Repository
public interface myPageDAO {
	
	//하차하기
	public int updateGetOff(int id);
	
}
