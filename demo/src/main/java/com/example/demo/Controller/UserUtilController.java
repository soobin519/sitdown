package com.example.demo.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;

import com.example.demo.Service.userService;
import com.example.demo.VO.userVO;

@Controller
public class UserUtilController {
	
	@Autowired
	BCryptPasswordEncoder bcryptPE;
	
	@Autowired
	userService uService;
	
	//아이디 중복 check
	
	//회원가입
	@RequestMapping(value="/createuser", method=RequestMethod.POST)
	public String insertUser(@ModelAttribute userVO user) {
		int result = 0;
		String message = "";
		//패스워드 암호화 
		System.out.println("user info "+user.toString());
		String password = bcryptPE.encode(user.getPassword());
		user.setPassword(password);
		result = uService.createUser(user);
		
		if(result>0) message = "success";
		else message = "fail";
		System.out.println("result"+message);
		
		return message;
		
	}
}
