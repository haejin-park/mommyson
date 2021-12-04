package com.sd.mommyson.member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.inject.Inject;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.sd.mommyson.member.dto.MemberDTO;
import com.sd.mommyson.member.service.MemberService;


@Controller
@RequestMapping("/member/*")
@SessionAttributes("loginMember")
public class MemberController {
	@Inject						//서비
	JavaMailSender mailSender;  //메일 서비스를 사용하기 위해 의존성을 주입.
	private MemberService memberService; //서비스를 호출하기 위해 의존성을 주입.
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	private static final String String = null;

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
	@GetMapping("join")
	public void join() {
		
	}
	
	
	/* 사용자 회원가입 페이지 이동 */
	@GetMapping("customerJoin")
	public void customerJoin() {
		
	}
	

	
	/* 사업자 회원가입 페이지 이동 */
	@GetMapping("businessJoin")
	public void businessJoin() {
		
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
	
//	@RequestMapping(value ="/auth.do", method=RequestMethod.POST)
//	public ModelAndView mailSending(HttpServletRequest request, String email, HttpServletResponse response_email) throws IOException {
//		
//		Random r = new Random();
//		int dice = r.nextInt(4589362) + 49311; //이메일로 받는 인증코드 부분(난수)
//		String setfrom = "luckyhaejin1126@gmail.com"; //보내는 사람 이메일 
//		String tomail = request.getParameter("e_mail"); //받는사람 이메일 
//		String title = "회원가입 인증 이메일입니다."; //제목 
//		String content =  //내용(줄간격 두기)
//				
//				System.getProperty("line.separator") +
//				System.getProperty("line.separator") +
//				"안녕하세요 회원님 마미손을 찾아주셔서 감사합니다. " +
//				System.getProperty("line.separator") +
//				System.getProperty("line.separator") +
//				"인증번호는 " + dice + "입니다." +
//				System.getProperty("line.separator") +
//				System.getProperty("line.separator") +
//				"받으신 인증번호를 홈페이지에 입력해 주시면 다음으로 넘어갑니다.";
//				
//
//					try {
//						
//						MimeMessage message = mailSender.createMimeMessage();
//						MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
//						
//						messageHelper.setFrom(setfrom); // 보내는 사람 생략하면 정상작동을 안함 
//						messageHelper.setTo(tomail); // 받는사람 이메일 
//						messageHelper.setSubject(title);//메일 제목은 생략가능 
//						messageHelper.setText(content); // 메일내용 
//						
//						mailSender.send(message);
//
//					} catch (Exception e) {
//						
//						System.out.println(e);
//					}
//					
//					ModelAndView mv = new ModelAndView(); //ModelAndView로 보낼 페이지를 지정하고, 보낼 값을 지정한다. 
//					mv.setViewName("customerJoin"); //뷰의 이름
//					mv.addObject("dice", dice);
//					
//					System.out.println("mv : " + mv);
//					
//					response_email.setContentType("text/html; charset=UTF-8");
//					PrintWriter out_email = response_email.getWriter();
//					out_email.println("<script>alert('이메일이 발송되었습니다. 인증번호를 입력해주세요.');<script>");
//					out_email.flush();
//					return mv;
//		
//	}
//	
//	//이메일 인증페이지 맵핑 메소드
//	@RequestMapping("email.do")
//	public String email() {
//		return "email";
//	}
//	
//	/* 이메일로 받은 인증번호를 입력하고 전송버튼을 누르면 맵핑되는 메소드
//	 * 내가 입력한 인증번호와 이메일로 입력한 인증번호가 맞는지 확인해서 
//	 * 맞으면 회원가입페이지로 넘어가고, 틀리면 다시 원래 페이지로 돌아오는메소드 
//	 * (이메일 인증하는 화면을 별개로 안만들고 jsp를 하나로 만들었는데 그럼 이건 어떻게해야할까요?)
//	 * */
//	@RequestMapping(value ="emailVerification.do${dice}", method = RequestMethod.POST)
//	public ModelAndView emailVerification(String emailVerification, @PathVariable String dice, HttpServletResponse response_equals) throws IOException {
//		
//		System.out.println("마지막 emailVerification : " + emailVerification);
//		System.out.println("마지막 dice : " + dice);
//		
//		//페이지 이동과 자료를 동시에 하기위해 ModelAndView를 사용해서 이동할 페이지와 자료를 담음
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("customerJoin");
//		mv.addObject("email", emailVerification);
//		if(emailVerification.contentEquals(dice)) {
//			//인증번호가 일치할 경우 인증번호가 맞다는 창을 출력하고 회원가입창으로 이동함 
//		
//			mv.setViewName("customerJoin");
//			mv.addObject("email",emailVerification);
//			//만약 인증번호가 같다면 이메일을 회원가입 페이지로 같이넘겨서 이메일을 다시 입력할 필요가 없게된다 
//			response_equals.setContentType("text/html; charset=UTF-8");
//			PrintWriter out_equals = response_equals.getWriter();
//			out_equals.print("<script>alert('인증번호가 일치하였습니다. 회원가입창으로 이동합니다.');</script>");
//			out_equals.flush();
//			return mv;
//			
//			
//		} else if(emailVerification != dice) {
//			
//			ModelAndView mv2 = new ModelAndView();
//			mv2.setViewName("customerJoin");
//			response_equals.setContentType("text/html; charset=UTF-8");
//			PrintWriter out_equals = response_equals.getWriter();
//			out_equals.println("<script>alert('인증번호가 일치하지않습니다. 인증번호를 다시 입력해주세요. '); history.go(-1);<script>");
//			out_equals.flush();
//			
//			return mv2;
//			
//		}
//		return mv;
//	}
//	

	
}
