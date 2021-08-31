package com.example.demo.Service;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.example.demo.DAO.userDAO;
import com.example.demo.VO.userVO;

@Service
public class userImplService implements userService {
	
	@Inject
	private userDAO dao;
	
	@Override
	public int createUser(userVO user) {
		//회원가입
		return dao.createUser(user);
	}
	
	//로그인 
	//dao에서 vo안에 조회된 값들이 담김 
	@Override
	public userVO login(userVO vo) throws Exception {
		return dao.login(vo);
	}
	
	//아이디 체크 
	@Override
	public int checkId(userVO user) {
		return dao.checkId(user);
	}
	
	//아이디 찾기
	@Override
	public userVO findId(userVO user) {
		return dao.findId(user);
	}
	
	//비밀번호 변경
	@Override
	public int updatePassword(userVO user) {
		return dao.updatePassword(user);
	}
	
	//유저 정보 조회 
	@Override
	public int selectUser(userVO user) {
		return dao.selectUser(user);
	}
	
	//현재 비밀번호 체크 
	@Override
	public int checkPw(userVO user) {
		return dao.checkPw(user);
	}

	@Override
	public int setNewPassword(userVO user) {
		return dao.setNewPassword(user);
	}

	@Override
	public userVO selectUserInfo(int id) {
		return dao.selectUserInfo(id);
	}
	
	
	
	
}
