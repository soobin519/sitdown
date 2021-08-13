package com.example.demo.DAO;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;


public class myPageImplDAO implements myPageDAO {
	
	  @Autowired
	  private SqlSession sql;	    
	  private static final String Namespace = "com.example.demo.DAO.myPageDAO.";
	
	  @Override
	  public int updateGetOff(int id) {
		// 하차하기
		return sql.update(Namespace+"updateGetOff", id);
	  }

	@Override
	public int updateSeatInfo(HashMap map) {
		// 현재 좌석 수정하기 
		return sql.update(Namespace+"updateSeatInfo", map);
	}

	  
	  
	  
	  
	  
}
