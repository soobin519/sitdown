package com.example.demo.Service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.example.demo.DAO.subwayDAO;
import com.example.demo.VO.getoff_infoVO;
import com.example.demo.VO.lineVO;
import com.example.demo.VO.stationVO;

@Service
public class subwayImplService implements subwayService {

	@Inject
	private subwayDAO sdao;
	
	@Override
	public List<lineVO> selectLine(){
		return sdao.selectLine();
	}
	
	@Override 
	public List<stationVO> selectStation(int lineNum){
		return sdao.selectStation(lineNum);
	}

	@Override
	public int insertGetoffInfo(getoff_infoVO getoff) {
		return sdao.insertGetoffInfo(getoff);
	}

	@Override
	public getoff_infoVO selectMySeatInfo(HashMap map) {
		// TODO Auto-generated method stub
		return sdao.selectMySeatInfo(map);
	}
	
	
}
