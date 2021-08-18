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
	public List<stationVO> selectStation(HashMap map){
		return sdao.selectStation(map);
	}

	@Override
	public int insertGetoffInfo(getoff_infoVO getoff) {
		return sdao.insertGetoffInfo(getoff);
	}

	@Override
	public getoff_infoVO selectMySeatInfo(HashMap map) {
		return sdao.selectMySeatInfo(map);
	}

	@Override
	public List<getoff_infoVO> selectGetoffInfo(HashMap map) {
		return sdao.selectGetoffInfo(map);
	}

	@Override
	public int checkDuplicatedInfo(int userId) {
		return sdao.checkDuplicatedInfo(userId);
	}
	
	
}
