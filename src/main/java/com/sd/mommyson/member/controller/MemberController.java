package com.sd.mommyson.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.sd.mommyson.member.dto.MemberDTO;
import com.sd.mommyson.member.service.MemberService;

@Controller
@RequestMapping("/member/*")
@SessionAttributes("loginMember")
public class MemberController {
	
	private MemberService memberService;
	
	@Autowired
	public MemberController(MemberService memberService) {
		this.memberService = memberService;
	}

	@GetMapping("login")
	public void login() {}
	
	@PostMapping(value="login", produces="text/plain; charset=UTF-8")
	@ResponseBody
	public String login(@ModelAttribute MemberDTO member, Model model) {
		
		String message = "";

		MemberDTO loginMember = memberService.selectMember(member);
		System.out.println(loginMember);
		if(loginMember == null) {
			message = "회원정보와 일치하지 않습니다.";
		} else if(loginMember.getMemType().equals("manager")) {
			message = "manager";
			model.addAttribute("loginMember", loginMember);
		} else {
			message = "main";
			model.addAttribute("loginMember", loginMember);
		}
		
		return message;
	}
}
