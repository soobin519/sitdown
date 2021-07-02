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
	
	/*@Resource(name="db")
	private userDAO mm;
	
	@Override
	public int execute(Model model) {
		List<userVO> user = mm.selectUser();
		System.out.println(mm.selectUser());
		model.addAttribute("test",user);
		return 0;
	}
	*/
	
	//로그인 
	//dao에서 vo안에 조회된 값들이 담김 
	@Override
	public userVO login(userVO vo) throws Exception {
		return dao.login(vo);
	}
}
