package com.example.demo.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.Service.userService;
import com.example.demo.VO.userVO;

@Controller
@RequestMapping("/train/*")
public class SubwayController {
  
	private static final org.slf4j.Logger logger = LoggerFactory.getLogger(UserUtilController.class);
	
	// 하차정보 등록 상세페이지
	@RequestMapping(value = "/getoff", method = RequestMethod.GET)
	public String getoff(Model model){
		
		String page="";
		
		return "getoff";
	}

}
