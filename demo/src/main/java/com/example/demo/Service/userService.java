package com.example.demo.Service;
import org.springframework.ui.Model;
import com.example.demo.VO.userVO;
import org.springframework.stereotype.Service;

import com.example.demo.VO.userVO;
//import org.springframework.ui.Model;

@Service
public interface userService {
  //회원가입
	public int createUser(userVO user);
	//로그인 
	public userVO login(userVO vo) throws Exception;
	//아이디 체크 
	public int checkId(userVO user);

}
