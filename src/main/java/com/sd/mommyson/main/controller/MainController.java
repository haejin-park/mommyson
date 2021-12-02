package com.sd.mommyson.main.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.sd.mommyson.member.service.MemberService;

@Controller
@RequestMapping("/*")
@SessionAttributes({"locationList","tagList"})
public class MainController {
	
	private MemberService memberService;
	
	@Autowired
	public MainController(MemberService memberService) {
		this.memberService = memberService;
	}

	@GetMapping(value={"/","main"})
	public String main(Model model) {
		
		List<HashMap<String, String>> locationList = memberService.selectLoation();
		List<HashMap<String, String>> categoryList = memberService.selectCategoryList();
		
		model.addAttribute("locationList", locationList);
		model.addAttribute("categoryList", categoryList);
		
		return "user/main";
	}
}
