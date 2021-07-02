package com.example.demo.Controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.Service.userImplService;
import com.example.demo.VO.userVO;

@Controller
public class MainController {
	@Resource(name="userService")
	private userImplService aa;
	
	@RequestMapping(value="/")
	public String main(Model model) {
		return "index";
	}
	
}
