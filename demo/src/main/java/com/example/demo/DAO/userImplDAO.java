package com.example.demo.DAO;

import java.util.List;

import javax.inject.Inject;

import com.example.demo.VO.userVO;

import org.springframework.stereotype.Repository;
import org.apache.ibatis.session.SqlSession;

public class userImplDAO implements userDAO {

	  @Inject
	  private SqlSession sql;
	  
	  //로그인 
	  @Override
	  public userVO login(userVO vo) throws Exception {
		  return sql.selectOne("userMapper.login",vo);
	  }

	/*@Override
	public List<userVO> selectUser() {
		// TODO Auto-generated method stub
		return null;
	}*/
	    


}
