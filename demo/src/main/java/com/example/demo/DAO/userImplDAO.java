package com.example.demo.DAO;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.demo.VO.userVO;

import org.springframework.beans.factory.annotation.Autowired;

@Repository
public abstract class userImplDAO implements userDAO {
	  @Autowired
	    private SqlSession sqlSession;
	    
	    private static final String Namespace = " com.example.demo.UserMapper";
	    
	  @Override 
	  public int createUser(userVO user) {
		  // 회원가입
		  return sqlSession.insert(Namespace,user);
	  }
	    
	    
}
