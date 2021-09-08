package com.example.demo.Controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.parser.ParseException;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.subwayAPI;
import com.example.demo.Service.subwayService;
import com.example.demo.Service.userService;
import com.example.demo.VO.getoff_infoVO;
import com.example.demo.VO.stationVO;
import com.example.demo.VO.trainVO;
import com.example.demo.VO.userVO;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping("/train/*")
public class SubwayController {
  
	private static final org.slf4j.Logger logger = LoggerFactory.getLogger(UserUtilController.class);
	@Inject
	subwayService service;
	
	@Autowired
	private HttpSession session;
	
	// 하차정보 등록 상세페이지
	@RequestMapping(value = "/getoff", method = RequestMethod.GET, produces="application/json")
	public ModelAndView getoff(Model model) throws ParseException{
		
		ModelAndView view = new ModelAndView();
		String viewPage="getoff";
		
		userVO loginUser = (userVO) session.getAttribute("user");
		System.out.println("session:  "+loginUser.toString());
//		String station="분당선";
//		List<Map<String, Object>> train = subwayAPI.getSubwayAPI(station); // api 호출
//		
//		model.addAttribute("trainInfo", train);
		view.setViewName(viewPage);
		view.addObject("lineInfo",service.selectLine());
		
		return view;
	}
	
	//좌석 정보 확인 상세페이지 
	@RequestMapping(value="/seatinfo")
  	public String seatinfoPage(Model model) {
		String viewPage = "seatinfo";
		model.addAttribute("lineInfo",service.selectLine());
  		return viewPage;
  	}
	
	//좌석 상세정보 가져오기
	@RequestMapping(value="/checkSeat")
	@ResponseBody
	public List<getoff_infoVO> seatPage(Model model, @RequestParam(value="subwayId") int subwayId, @RequestParam(value="trainNo") int trainNo, @RequestParam(value="carNum") int carNum) {
		//System.out.println(trainNo);
		System.out.println("aaaaaa");
		HashMap<String,Object> map = new HashMap<>();
		map.put("subwayId",subwayId); // 노선번호 
		map.put("trainNo", trainNo); // 열차번호
		map.put("carNum", carNum); // 칸번호
			
		List<getoff_infoVO> getoffList = service.selectGetoffInfo(map);
		System.out.println("getofflist"+getoffList);
			
		//model.addAttribute("getoffList", getoffList);
		return getoffList;
	}
	
	// 좌석 확인 page
	@RequestMapping(value="/checkInfo")
	public String seatinfoPage(Model model, @RequestParam(value="subwayId") int subwayId, @RequestParam(value="trainNo") int trainNo, @RequestParam(value="carNum") int carNum) {
		
		String viewPage = "checkSeat";
		
		return viewPage;
	}
	
	
	
	// 열차api 리스트 가져오기 
	@RequestMapping(value="/trainList",method=RequestMethod.POST)
	public ModelAndView trainList(@RequestParam (value="line") String line) throws ParseException {
		
		ModelAndView view = new ModelAndView();
		String viewPage="trainListAjax";
		
		System.out.println("line=>"+line); // ex) 3호선 -> 노선명
		
		List<Map<String, Object>> train = subwayAPI.getSubwayAPI(line); // api 호출
		System.out.println("train 정보: "+train.toString());
		
		view.setViewName(viewPage);
		view.addObject("trainInfo", train);
		
		return view;
		
	}
	
	//하차역 list 가져오기
	@RequestMapping(value="stationList",method=RequestMethod.POST)
	public ModelAndView stationList(@RequestParam (value="lineNum") int lineNum, @RequestParam (value="updnLine") int updnLine, @RequestParam (value="station") String station,
		@RequestParam (value="stationTmn") String stationTmn) {
		
		ModelAndView view = new ModelAndView();
		String viewPage="stationListAjax";
		
		HashMap<String,Object> map = new HashMap<>();
		
		map.put("lineNum", lineNum); // 노선명
		map.put("updnLine", updnLine); // 상행 or 하행
		map.put("station", station); // 현재 역명
		map.put("stationTmn", stationTmn); // 종착역
		
		List<stationVO> stationList = service.selectStation(map);
		
		view.setViewName(viewPage);
		view.addObject("stationList",stationList);
		
		return view;
	}
	
	// 좌석선택 page
	@RequestMapping(value="selectSeat",method=RequestMethod.POST)
	public ModelAndView selectSeat(trainVO train) {
		ModelAndView view = new ModelAndView();
		String viewPage="selectSeat";
		
		System.out.println(train.toString());
		
		view.setViewName(viewPage);
		view.addObject("selectInfo",train);
		
		return view;
		
	}
	
	// 하차정보 등록 (진행중)
	@RequestMapping(value="addseatInfo",method=RequestMethod.POST)
	public ModelAndView addseatInfo(getoff_infoVO getoff, RedirectAttributes redirect) {
		
		ModelAndView view = new ModelAndView();
		String viewPage = "redirect:successInsert";
		String errorPage = "errorAlert";
		
		userVO user = (userVO) session.getAttribute("user");
		int userId = user.getId();
		
		// 이미 등록 된 정보가 없는 경우에만 등록 수행 
		if(service.checkDuplicatedInfo(userId)<100) {
			
			// 등록 수행
			int result = service.insertGetoffInfo(getoff);
			
			// 등록 성공했을 시 
			if(result==1){		
				view.setViewName(viewPage);
				view.addObject("gid",getoff.getId()); 
			}else {
				view.setViewName(errorPage);
				view.addObject("msg", "등록 실패 다시 시도해주세요.");
			}
			
		}else {
			// 이미 등록된 정보가 있는 경우 
			view.setViewName(errorPage);
			view.addObject("msg", "이미 등록된 정보가 있습니다. 하차 후 다시 등록해 주세요.");
		}
		
		return view;
		
	}
	
	//하차정보 등록 성공 시
	@RequestMapping(value="successInsert")
	public String successInsert(Model model,@RequestParam("gid") int gid) {
		
		String viewPage = "successInsert";
		HashMap<String,Object> map = new HashMap<>();
		
		userVO user = (userVO) session.getAttribute("user");
		
		map.put("id", gid);
		map.put("userId", user.getId());
		map.put("type", 1);
		
		getoff_infoVO myseat = service.selectMySeatInfo(map);
		model.addAttribute("myseat", myseat);
		
		return viewPage;
	}

}
