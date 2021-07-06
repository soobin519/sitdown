package com.example.demo.Controller;


import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.taglibs.standard.lang.jstl.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import com.example.demo.Service.userService;
import com.example.demo.VO.userVO;

@Controller
@RequestMapping("/user/*")
public class UserUtilController {
	
	@Autowired
	BCryptPasswordEncoder bcryptPE;
	
	@Autowired
	userService service;
  
  private static final org.slf4j.Logger logger = LoggerFactory.getLogger(UserUtilController.class);
	
	//아이디 중복 check
  
  	@RequestMapping(value="/join")
  	public String joinPage(Model model) {
  		return "join";
  	}
	
	//회원가입
	@RequestMapping(value="/createuser", method=RequestMethod.POST)
	public String insertUser(@ModelAttribute userVO user) {
		int result = 0;
		String message = "";
		//패스워드 암호화 
		System.out.println("user info "+user.toString());
		String password = bcryptPE.encode(user.getPassword());
		user.setPassword(password);
		result = service.createUser(user);
		
		if(result>0) message = "success";
		else message = "fail";
		System.out.println("result"+message);
		
		return message;
		
	}
	
	//로그인 
  	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@ModelAttribute userVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception{
		logger.info("post login");
		
		HttpSession session = req.getSession();
		userVO login = service.login(vo);
		
		if(login == null) {
			session.setAttribute("user", null);
			rttr.addFlashAttribute("msg", false);
		}else {
			session.setAttribute("user", login);
			System.out.println("userinfo"+login.getEmail());		
			
		}
		
		return "redirect:";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception{
		
		session.invalidate();
		
		return "redirect:/";
	}
	
	@RequestMapping(value="/login2")
	public String main(Model model) {
		return "login";
	}

}
