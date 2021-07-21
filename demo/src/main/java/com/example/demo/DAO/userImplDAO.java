package com.example.demo.DAO;

import java.util.List;

import javax.inject.Inject;

import com.example.demo.VO.userVO;

import org.springframework.stereotype.Repository;
import com.example.demo.VO.userVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.apache.ibatis.session.SqlSession;

public class userImplDAO implements userDAO {

	  @Inject
	  private SqlSession sql;	    
	  private static final String Namespace = "com.example.demo.UserMapper";
	    
	  @Override 
	  public int createUser(userVO user) {
		  // 회원가입
		  return sql.insert(Namespace,user);
	  }
  
  	//로그인 
	  @Override
	  public userVO login(userVO vo) throws Exception {
		  return sql.selectOne("userMapper.login",vo);
	  }
	  
	  //아이디 중복 체크 
	  @Override 
	  public int checkId(userVO user) {
		  return sql.selectOne("com.example.demo.UserMapper.checkId",user);
	  }
	  
	  //아이디 찾기 
	  @Override
	  public userVO findId(userVO user) {
		  return sql.selectOne("com.example.demo.UserMapper.findId",user);
	  }
	    
}
