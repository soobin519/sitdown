package com.example.demo.Controller;


import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.TestingAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;

import java.util.HashMap;

import javax.inject.Inject;
import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.taglibs.standard.lang.jstl.Logger;
import org.json.simple.parser.JSONParser;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.mailSend;
import com.example.demo.pwdMaker;
import com.example.demo.Service.subwayService;
import com.example.demo.Service.userService;
import com.example.demo.VO.getoff_infoVO;
import com.example.demo.VO.userVO;

@Controller
@RequestMapping("/user/*")
public class UserUtilController {
	
	@Autowired
	BCryptPasswordEncoder bcryptPE;
	
	@Autowired
	userService service;

	@Autowired
	private mailSend mail;
	
	@Autowired
	private HttpSession session;
  
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
  	
  	//로그인 페이지
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
			
			// 권한 추가 
			SecurityContext context = SecurityContextHolder.createEmptyContext();
			Authentication authentication = new TestingAuthenticationToken(login.getId(),login.getPassword(),"ROLE_USER");
			context.setAuthentication(authentication);
			SecurityContextHolder.setContext(context);
			
			System.out.println("userinfo"+login.getEmail());	
			//result="True";
			//model.addAttribute("msg", true);
			//return result;
			return "redirect:/";
			
		}
		
		
	}
	
  	//로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception{
		
		session.invalidate();
		
		return "redirect:/";
	}
	
	//아이디찾기 페이지 
		@RequestMapping(value="/findid")
		public String findIdPage(Model model) {
			return "findId";
		}
	
	//아이디 찾기
	@ResponseBody
	@RequestMapping(value ="/findId", method=RequestMethod.POST)
	public userVO findId(@ModelAttribute userVO user, Model model) {
		
		userVO result = service.findId(user);
		model.addAttribute("user",result);
		System.out.println("아이디찾기 완료 ");
		System.out.println("controller "+result.toString());
		
		String name = result.getName();
		result.setName(name);
		String id = result.getUserId();
		result.setUserId(id);
		System.out.println("name: "+name);
		System.out.println("id "+id);
		
		return result;
	}
	
	//찾은 아이디 보여주는 페이지 
	@RequestMapping(value="/viewid")
	public String viewIdPage(Model model) {
		return "viewId";
	}
	
	//pw찾기 페이지 
	@RequestMapping(value="/findpw")
	public String findPwPage(Model model) {
		return "findPw";
	}
	
	//비밀번호 mail 전송 
	@ResponseBody
	@RequestMapping(value="/sendPwdMail", method=RequestMethod.POST)
	public String sendPwdMail(@ModelAttribute userVO user) {

		String msg="";
//		userVO u = service.findId(user);
		
		String email = user.getEmail();
		int count= service.selectUser(user);
		
		if(count>0) {
			// 조회되는 정보가 있다면
			String pwd = pwdMaker.generatePwd(); // 랜덤 패스워드 생성 
			String newPwd = bcryptPE.encode(pwd); //암호
			user.setPassword(newPwd); // 새 패스워드 update
			int result = service.updatePassword(user);
			
			if(result>0) {
				//패스워드 업데이트 성공 시
				boolean success = mail.sendPwdMail(email, pwd); // 메일 전송
				if(success) {
					msg="메일 전송이 완료되었습니다.";
				}else {
					msg="메일 전송에 실패하였습니다.";
				}
				
			}else {
				//패스워드 업데이트 실패 시
				msg="다시 시도해 주세요.";
			}
			
		}else {
			// 입력 정보가 조회되지 않을 경우
			msg="유저 정보가 일치하지 않습니다.";
		}		
		
		return msg;
	}
	
	//찾은 비밀번호 알림 메세지 페이지 
	@RequestMapping(value="/viewpw")
	public String viwPwPage(Model model) {
		return "viewPw";
	}
	
	//새 비밀번호 설정 
	@RequestMapping(value="/setNewPassword",method=RequestMethod.POST)
	@ResponseBody
	public int setNewPassword(String password, String newPassword, String checkNewPassword) {
		
		int result = 0;
		
		userVO loginUser = (userVO) session.getAttribute("user");
		System.out.println(loginUser.toString());
		
		if(bcryptPE.matches(loginUser.getPassword(), password)) {
				if(newPassword == checkNewPassword) {
					userVO user = new userVO();
					user.setId(loginUser.getId());
					user.setPassword(newPassword);
					result = service.setNewPassword(user);
					
				}else {
					result = 2; // 입력된 새 비밀번호가 일치하지 않을때
				}
		}		
		return result;
	}
	

	
	

}
