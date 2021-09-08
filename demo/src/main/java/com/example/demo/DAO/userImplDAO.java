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
	  
	  //비밀번호 변경 
	  @Override
	  public int updatePassword(userVO user) {
		  return sql.selectOne("com.example.demo.UserMapper.updatePassword",user);
	  }
	  
	  //현재 비밀번호 체크 
	  @Override 
	  public int checkPw(userVO user) {
		  return sql.selectOne("com.example.demo.UserMapper.checkPw",user);
	  }
	  
	  //유저 정보 조회
	  @Override
	  public int selectUser(userVO user) {
		  return sql.selectOne("com.example.demo.UserMapper.updatePassword",user);
	  }

	@Override
	public int setNewPassword(userVO user) {
		// TODO Auto-generated method stub
		return sql.selectOne("com.example.demo.UserMapper.setNewPassword",user);
	}

	@Override
	public userVO selectUserInfo(int id) {
		// TODO Auto-generated method stub
		return sql.selectOne("com.example.demo.UserMapper.selectUserInfo",id);
	}
	
	
	    
}
