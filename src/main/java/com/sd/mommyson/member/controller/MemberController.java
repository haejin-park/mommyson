package com.sd.mommyson.member.controller;

import java.util.HashMap;
import java.util.Random;

import javax.mail.internet.MimeMessage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
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
import com.sd.mommyson.member.dto.UserDTO;
import com.sd.mommyson.member.service.MemberService;


@Controller
@RequestMapping("/member/*")
@SessionAttributes("loginMember")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired	
	private MemberService memberService; 

	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	
	@Autowired				 
	JavaMailSender mailSender;   

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
	public void join() {}


	/* 사용자 회원가입 페이지 이동 */
	@GetMapping("customerJoin")
	public void customerJoin() {}



	/* 사업자 회원가입 페이지 이동 */
	@GetMapping("businessJoin")
	public void businessJoin() {}


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
	
	
	/* 이메일 중복 검사 */
	@PostMapping(value ="emailChk", produces="text/plain; charset=UTF-8;")
	@ResponseBody
	public String emailChk(@RequestParam String email) throws Exception {
		System.out.println("email : " + email);
		int result = memberService.emailChk(email);
		System.out.println("result : " + result);
		String re = "";
		if(result > 0) {
			re = "1";
		} else {
			re = "0";
		}
		return re;
	}
	
	
	/* 주소에서 구 가져오기 */
	@PostMapping(value="locationCode", produces="text/plain; charset=UTF-8;")
	@ResponseBody
	public String locationCode(@RequestParam("address1")String address) throws Exception {
		
			System.out.println("address : " + address);
			String locationName = address.split(" ")[1];
			System.out.println(locationName);
			String result = memberService.locationCode(locationName);
			
			return result;
		
	}
	
	
	/* 이메일 인증 */ 
	@RequestMapping(value="mailCheck", method=RequestMethod.POST)
	@ResponseBody
	public String mailCheck(String email) throws Exception{

		/* 뷰에서 넘어온 데이터 확인 */ 
		logger.info("이메일 데이터 전송 확인");
		logger.info("이메일 : " + email);


		/* 인증번호(난수) 생성 */
		Random random = new Random();
		int checkNum = random.nextInt(888888) +111111;
		logger.info("인증번호" + checkNum);

		/* 이메일 보내기 */
		String setFrom = "sli9962@naver.com";
		String toMail = email;
		String title = "회원가입 인증 이메일입니다.";
		String content = "마미손을 방문해주셔서 감사합니다." 
				+ "<br><br>" 
				+ "인증번호는 " + checkNum +"입니다." 
				+ "<br><br>" 
				+ "해당 인증번호를 홈페이지의 인증번호 확인란에 기입하여 주세요."; 



		try {

			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");
			helper.setFrom(setFrom);
			helper.setTo(toMail);
			helper.setSubject(title);
			helper.setText(content,true);
			mailSender.send(message);

		}catch(Exception e) {
			e.printStackTrace();
		}

		
		String num = Integer.toString(checkNum);
		
		memberService.registEmailCode(num);
		return num;
	}
	

	
	/* 회원가입 */
	@RequestMapping(value="customerJoin2", method=RequestMethod.POST)
	public String customerJoin(@ModelAttribute MemberDTO member) throws Exception{
//
//		String rawPwd = "";
//		String encodePwd = "";
//		
//		rawPwd = member.getMemPwd(); //비밀번호 데이터 얻음 
//		encodePwd = passwordEncoder.encode(rawPwd); //비밀번호 인코딩 
//		member.setMemPwd(encodePwd); //인코딩 비밀번호 member 객체에 다시 저장 
		
		member.setMemPwd(passwordEncoder.encode(member.getMemPwd()));
		System.out.println(member);
		logger.info("join진입");
		
		memberService.customerJoin(member);
		logger.info("customerJoin Service 성공");
		
		return "/member/login";
		
		
	}
	
	
	/* 아이디 찾기 화면 띄우기 */
	@GetMapping("findId")
	public void findId() {}
	
	
	/* 아이디 찾기 */
	@PostMapping(value = "findIdCheck", produces = "text/plain; charset=UTF-8;")
	@ResponseBody
	public String findIdCheck(@RequestParam String name, @RequestParam String email) {
		System.out.println(name);
		System.out.println(email);
		
		MemberDTO mdto = new MemberDTO(); // 이메일이 담긴 객체 
		UserDTO udto = new UserDTO(); // 이름이 담긴 객체  
		udto.setName(name);
		mdto.setUser(udto);
		mdto.setEmail(email);
		System.out.println(mdto);
		String member = memberService.findIdCheck(mdto);
		System.out.println(member);
		 return member;
	}
	
	
	/* 비밀번호 찾기 화면 띄우기 */
	@GetMapping("findPwd")
	public void findPwd() {}
	
	/* 비밀번호 찾기(변경 화면으로 이동 하기 전단계) 이메일 인증 (기존 인증번호 업데이트 하기위해 이메일 같이 넘겨줌)*/
	@RequestMapping(value="find_pass.do", method=RequestMethod.POST)
	@ResponseBody
	public String find_pass(@RequestParam String email) throws Exception{

		/* 뷰에서 넘어온 데이터 확인 */ 
		logger.info("이메일 데이터 전송 확인");
		logger.info("이메일 : " + email);


		/* 인증번호(난수) 생성 */
		Random random = new Random();
		int code = random.nextInt(888888) +111111;
		logger.info("인증번호" + code);

		/* 이메일 보내기 */
		String setFrom = "sli9962@naver.com";
		String toMail = email;
		String title = "비밀번호 찾기 인증 이메일입니다.";
		String content = "마미손을 방문해주셔서 감사합니다." 
				+ "<br><br>" 
				+ "인증번호는 " + code +"입니다." 
				+ "<br><br>" 
				+ "해당 인증번호를 홈페이지의 인증번호 확인란에 기입하여 주세요."; 

		try {

			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");
			helper.setFrom(setFrom);
			helper.setTo(toMail);
			helper.setSubject(title);
			helper.setText(content,true);
			mailSender.send(message);

		}catch(Exception e) {
			e.printStackTrace();
		}

		String emailCode = Integer.toString(code);
		
		HashMap<String, String> map = new HashMap<String, String>();
		
		map.put("emailCode", emailCode);
		map.put("email", email);
		System.out.println("map : " + map);
		
		memberService.updateEmailCode(map);
		
		return emailCode;
		
	}
	
	
	/* 인증번호를 입력한 후 비밀번호 변경 버튼을 누르면 변경화면으로 이메일값과 함 이동 */
	
	
	
//	@RequestMapping(value ="findPass2", method = RequestMethod.POST, produces = "text/plain; charset=UTF-8;")
//	@ResponseBody
//	public String findPass2(@RequestParam String emailCode, @RequestParam String inputEmailCode, @RequestParam String email, Model model) throws IOException{
//		
//		
//		System.out.println("inputEmailCode : " + inputEmailCode);
//		
//		System.out.println("email : " + email);
//		
//		String result = "";
//		
//		if(emailCode.equals(inputEmailCode)) {	//인증번호가 일치할 경우 
//			
//			//이메일을 비밀번호 변경 화면에서 활용할 수 있도록 한다.
//			
//			result = email;
//			
//		} else if(emailCode != inputEmailCode) {
//			
//			result = "인증코드가 일치하지 않습니다.";
//			
//		}
//		
//		return result;
//		
//	}
	
	
//	/* 비밀번호 변경하기 화면 띄우기 */
//	@GetMapping("modifyPwd")
//	public void modifyPwd(@RequestParam String email, Model model) {
//		
//		model.addAttribute("email", email);
//		
//	}
	
	
	/* 변경할 비밀번호 입력 후 확인 버튼 누르면 넘어오는 컨트롤러 */
	@PostMapping(value ="modifyPwd2")
	public String modifyPwd2(@RequestParam String email, @RequestParam String memPwd, Model model) throws Exception{
		
		System.out.println("email : " + email);
		
		String encode = passwordEncoder.encode(memPwd);
		System.out.println("encode : " + encode);
		
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("email",email);
		map.put("encode", encode);
		
		memberService.modifyPwd(map);
		
		return "/member/login" ;
		
	}
	
	
}	

