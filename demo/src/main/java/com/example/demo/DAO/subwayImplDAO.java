package com.example.demo.DAO;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import com.example.demo.VO.getoff_infoVO;
import com.example.demo.VO.lineVO;
import com.example.demo.VO.stationVO;

public class subwayImplDAO implements subwayDAO {
	
	  @Inject
	  private SqlSession sql;	    
	  private static final String Namespace = "com.example.demo.DAO.subwayDAO.";
	  
	  @Override
	  public List<lineVO> selectLine() {
		  return sql.selectList(Namespace+"selectLine");
	  }
	  
	  @Override
	  public List<stationVO> selectStation(HashMap map) {
		  return sql.selectList(Namespace+"selectStation",map);
	  }

	  @Override
	  public int insertGetoffInfo(getoff_infoVO getoff) {
		  return sql.insert(Namespace+"insertGetoffInfo",getoff);
	  }

	@Override
	public getoff_infoVO selectMySeatInfo(HashMap map) {
		return sql.selectOne(Namespace+"selectMySeatInfo",map);
	}
	  
	@Override
	public List<getoff_infoVO> selectGetoffInfo(HashMap map) {
		return sql.selectList(Namespace+"selectGetoffInfo", map);
	}

	@Override
	public int checkDuplicatedInfo(int userId) {
		return sql.selectOne(Namespace+"checkDuplicatedInfo",userId);
	}
	
	@Override 
	public int deletePassingTrain() {
		return sql.update(Namespace+"deletePassingTrain");
	}
}
