package com.example.demo.Service;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.example.demo.DAO.userDAO;
import com.example.demo.VO.userVO;

@Service("userService")
public class userImplService implements userService {
	
	@Resource(name="db")
	private userDAO udao;
	
	@Override
	public int createUser(userVO user) {
		//회원가입
		return udao.createUser(user);
	}
}
