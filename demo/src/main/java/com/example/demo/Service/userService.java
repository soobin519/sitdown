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
	//아이디 찾기 
	public userVO findId(userVO user);
	//비밀번호 변경 
	public int updatePassword(userVO user);
	//유저 정보 조회 
	public int selectUser(userVO user);
	//현재 비밀번호 체크 
	public int checkPw(userVO user);
	//비밀번호 수정 
	public int setNewPassword(userVO user);
	//유저 전체 정보 조회
	public userVO selectUserInfo(int id);

}
