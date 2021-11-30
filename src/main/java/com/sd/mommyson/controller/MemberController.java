package com.sd.mommyson.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sd.mommyson.member.service.MemberService;

@Controller
public class MemberController {
	
	private final MemberService memberService;
	
	public MemberController(MemberService memberService) {
		this.memberService = memberService;
	}

	@GetMapping("/test/test")
	public String selectAll(Model model) {
		int result = memberService.selectAll();
		
		model.addAttribute("result", result);
		
		return "test/test";
	}
}
