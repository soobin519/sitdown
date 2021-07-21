package com.example.demo.Controller;


import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.taglibs.standard.lang.jstl.Logger;
import org.json.simple.parser.JSONParser;
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
  	@RequestMapping(value="/checkID", method=RequestMethod.POST, produces ="application/json; charset=UTF-8")
  	@ResponseBody
  	public int checkID(userVO user) {
  		
  		System.out.println("connect");
  		System.out.println("id=>"+user.toString());
  		
  		int count = service.checkId(user);
  		
  		return count;
  	}
  	
  
  	@RequestMapping(value="/join")
  	public String joinPage(Model model) {
  		return "join";
  	}
	
	//회원가입
	@RequestMapping(value="/createuser", method=RequestMethod.POST, produces ="application/json; charset=UTF-8")
	@ResponseBody
	public int insertUser(userVO user) {
		int result = 0;
		//패스워드 암호화 
		System.out.println("user info "+user.toString());
		String password = bcryptPE.encode(user.getPassword());
		user.setPassword(password);
		result = service.createUser(user);
		
		return result;

		
	}
	
	//로그인 페이지 
	@RequestMapping(value="/login")
	public String loginPage(Model model) {
		return "login";
	}
	
	//로그인 
  	@RequestMapping(value = "/checkuser", method = RequestMethod.POST)
	public String login(@ModelAttribute userVO vo, HttpServletRequest req, RedirectAttributes rttr, Model model) throws Exception{
		logger.info("post login");
		
		HttpSession session = req.getSession();
		userVO login = service.login(vo);
		//String result = " ";
		
		if(login == null) {
			session.setAttribute("user", null);
			rttr.addFlashAttribute("msg", false);
			//result="False";
			//model.addAttribute("msg", false);
			//return result;
			return "redirect:/user/login";
		}else {
			session.setAttribute("user", login);
			//rttr.addFlashAttribute("msg", true);
			System.out.println("userinfo"+login.getEmail());	
			//result="True";
			//model.addAttribute("msg", true);
			//return result;
			return "redirect:/";
			
		}
		
		
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception{
		
		session.invalidate();
		
		return "redirect:/";
	}
	
	//아이디 찾기
	@RequestMapping(value ="/findId", method=RequestMethod.POST)
	public String findId(@ModelAttribute userVO user, Model model) {
		
		String page = "findId";
		
		userVO result = service.findId(user);
		model.addAttribute("user",result);
		
		return page;
	}
	

}
