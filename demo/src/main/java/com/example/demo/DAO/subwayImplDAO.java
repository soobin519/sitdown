package com.example.demo.DAO;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

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
	  
	
}