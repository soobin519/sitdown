package com.example.demo.Service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.example.demo.DAO.myPageDAO;
import com.example.demo.DAO.subwayDAO;
import com.example.demo.VO.getoff_infoVO;
import com.example.demo.VO.lineVO;
import com.example.demo.VO.stationVO;

@Service
public class myPageImplService implements myPageService {

	@Inject
	private myPageDAO pdao;

	@Override
	public int updateGetOff(int id) {
		// 하차하기
		return pdao.updateGetOff(id);
	}
	
	
	
	
}
