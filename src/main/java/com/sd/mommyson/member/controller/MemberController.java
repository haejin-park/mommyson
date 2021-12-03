package com.sd.mommyson.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

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
		} else {
			message = "main";
			model.addAttribute("loginMember", loginMember);
		}

		return message;
	}

	@GetMapping("logout")
	public String logout(SessionStatus status) {
		status.setComplete();
		return "redirect:/main"; // redirect: jsp페이지를 매핑하고 있는 해당 서블릿으로 redirect 시켜준다.
	}

	/* 회원가입 선택 페이지 이동 */
	@GetMapping("goJoin")
	public void goJoin() {
		
	}
	
	
	/* 사용자 회원가입 페이지 이동 */
	@GetMapping("goCustomerJoin")
	public void goCustomerJoin() {
		
	}
	

	
	/* 사업자 회원가입 페이지 이동 */
	@GetMapping("goBusinessJoin")
	public void goBusinessJoin() {
		
	}
	
	
	/*  아이디 중복 검사 */
	@PostMapping(value="idChk", produces="text/plain; charset=UTF-8;")
	@ResponseBody
	public String idChk(@RequestParam("id") String memId) throws Exception {
		System.out.println("memId : " + memId);
		int result = memberService.idChk(memId);
		System.out.println("result : " + result);
		
		String re = "";
		
		if(result > 0) {
			re = "1";
		} else {
			re = "0";
		}
		
		return re;
		
		
	}
//	
//	
//	@PostMapping(value = "customerJoin", produces="text/plain; charset=UTF-8;")
//	@ResponseBody
//	
//	
	
}
