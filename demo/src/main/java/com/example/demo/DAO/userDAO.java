package com.example.demo.DAO;

import java.util.List;

import org.springframework.stereotype.Repository;
import com.example.demo.VO.userVO;

@Repository
public interface userDAO {

  //회
	public int createUser(userVO user);
	
	//로그인  
	//login(userVO vo)에 파라미터 값이 전달되며 xml에서 조회한 데이터들은 userVO에 담김 
	public userVO login(userVO vo) throws Exception;
	
	//아이디 체크 
	public int checkId(String id);

}
