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
	
	@Override
	public userVO findId(userVO user) {
		return dao.findId(user);
	}
}
