package com.example.demo.Service;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import com.example.demo.VO.getoff_infoVO;
import com.example.demo.VO.lineVO;
import com.example.demo.VO.stationVO;

@Service
public interface myPageService {
	
	// 하차하기
	public int updateGetOff(int id);
	
}
