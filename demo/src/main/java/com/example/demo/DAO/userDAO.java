package com.example.demo.DAO;

import java.util.List;
import java.util.Map;

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
	public int checkId(userVO user);
	
	//아이디 찾기 
	public userVO findId(userVO user);
	
	//비밀번호 변경 
	public int updatePassword(userVO user);
	
	//현재 비밀번호 체크 
	public int checkPw(userVO user);
	
	//비밀번호 찾기 시 유저정보 조회
	public int selectUser(userVO user);
	
	//새 비밀번호 설정 
	public int setNewPassword(userVO user);
	
	//회원정보 조회 
	public userVO selectUserInfo(int id);

}
