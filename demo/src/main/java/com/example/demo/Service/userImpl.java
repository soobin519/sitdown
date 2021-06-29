package com.example.demo.Service;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.example.demo.DAO.MainMapper;
import com.example.demo.VO.userVO;

@Service("userService")
public class userImpl implements userService {
	
	@Resource(name="db")
	private MainMapper mm;
	
	@Override
	public int execute(Model model) {
		List<userVO> user = mm.selectUser();
		System.out.println(mm.selectUser());
		model.addAttribute("test",user);
		return 0;
	}
}
