package com.example.demo.Controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.Service.myPageService;
import com.example.demo.Service.subwayService;
import com.example.demo.Service.userService;
import com.example.demo.VO.getoff_infoVO;
import com.example.demo.VO.userVO;

@Controller
@RequestMapping("/myPage/*")
public class myPageController {
	
	@Autowired
	userService service;
	
	@Autowired
	subwayService tservice;
	
	@Autowired 
	myPageService pservice;
	
	@Autowired
	private HttpSession session;
	
	//마이 페이지 
	@RequestMapping(value="/info")
	public String mypage(Model model) {
		
		String viewPage = "myPage";
		HashMap<String,Object> map = new HashMap<>();
		
		userVO user = (userVO) session.getAttribute("user");
		map.put("userId", user.getId());
		map.put("type", 2);
		
		getoff_infoVO myseat = tservice.selectMySeatInfo(map);
		model.addAttribute("myseat", myseat);
		
		return viewPage;
	}
	
	// 하차하기 
	@RequestMapping(value="/getoff/{id}", method = RequestMethod.PUT)
	@ResponseBody
	public int getoff(Model model, @PathVariable int id) {
		
		System.out.println("gidgidgidgid="+id);
		return pservice.updateGetOff(id);
		
	}
	
	// 좌석 정보 수정하기 
	@RequestMapping(value="/updateSeat")
	public String updateSeat(Model model) {
		
		String viewPage = "";
		
		return viewPage;
		
	}

}
