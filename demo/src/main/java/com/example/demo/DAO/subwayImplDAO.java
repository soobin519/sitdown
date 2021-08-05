package com.example.demo.DAO;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

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
	  public List<stationVO> selectStation(int lineNum) {
		  return sql.selectList(Namespace+"selectStation",lineNum);
	  }

	  @Override
	  public int insertGetoffInfo(getoff_infoVO getoff) {
		  return sql.insert(Namespace+"insertGetoffInfo",getoff);
	  }

	@Override
	public getoff_infoVO selectMySeatInfo(HashMap map) {
		// TODO Auto-generated method stub
		return sql.selectOne(Namespace+"selectMySeatInfo",map);
	}
	  

}
