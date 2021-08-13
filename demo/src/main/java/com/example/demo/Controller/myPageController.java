package com.example.demo.Controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.Service.myPageService;
import com.example.demo.Service.subwayService;
import com.example.demo.Service.userService;
import com.example.demo.VO.getoff_infoVO;
import com.example.demo.VO.trainVO;
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
		//System.out.println(myseat.toString());
		model.addAttribute("myseat", myseat);
		
		return viewPage;
	}
	
	// 하차하기 
	@RequestMapping(value="/getoff/{id}", method = RequestMethod.PUT)
	@ResponseBody
	public int getoff(Model model, @PathVariable int id) {
		
		return pservice.updateGetOff(id);
		
	}
	
	// 좌석 정보 수정하기 page
	@RequestMapping(value="/updateSeat", method = RequestMethod.POST)
	public String updateSeat(Model model, getoff_infoVO train) {
		
		
		String viewPage = "updateSeat";
		model.addAttribute("selectInfo", train);
		
		return viewPage;
		
	}
	
	//수정 controller
	@RequestMapping(value="/updateSeatInfo", method = RequestMethod.POST)
	public String updateInfo(Model model, @RequestParam int id, @RequestParam int seatNum) {
		
		//String viewPage = "redirect:info";
		String viewPage = "successAlert";
		String msg = "";
		
		HashMap<String,Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("seatNum", seatNum);
		
		int result = pservice.updateSeatInfo(map);
		
		if(result==1) {
			msg = "수정 성공";
		}else {
			msg = "수정 실패 다시 시도해주세요.";
		}
		
		model.addAttribute("msg", msg);
		
		return viewPage;
	}

}
