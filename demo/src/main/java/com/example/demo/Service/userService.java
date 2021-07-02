package com.example.demo.Service;

import org.springframework.stereotype.Service;

import com.example.demo.VO.userVO;
//import org.springframework.ui.Model;

@Service
public interface userService {
	//public int execute(Model model);
	
	//로그인 
	public userVO login(userVO vo) throws Exception;
}
