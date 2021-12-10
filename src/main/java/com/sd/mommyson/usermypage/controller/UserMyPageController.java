package com.sd.mommyson.usermypage.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.sd.mommyson.member.dto.MemberDTO;

@Controller
@RequestMapping("/userMyPage")
public class UserMyPageController {
//양윤제
	
	/*주문내역*/
	@GetMapping(value={"myOrderList","/"})
	public String myOrderList(HttpSession session, Model model) {
		
//		String userInfo = session.getId();
		MemberDTO memberInfo = (MemberDTO) session.getAttribute("loginMember");
//		System.out.println("userInfo" +memberInfo);
//		System.out.println(session);
//		System.out.println(model.getAttribute("loginMember"));
//		String userInfo = (String) model.getAttribute("loginMember");
		System.out.println("로그인 멤버: " + memberInfo);
		System.out.println("로그인한 멤버의 멤버 코드: " + memberInfo.getMemCode());
		int userCode = memberInfo.getMemCode();
		
		
		
		
		
		
		
		
		
		return "user_mypage/userTotalOrderList";
	}
	
	/*개인정보변경*/
	@GetMapping("userInfoChange")
	public String userInfoChange( ) {
		
		
		return "user_mypage/userChageUserInfo";
	}
	
	/*회원탈퇴*/
	@GetMapping("userSignOut1")
	public String userSingOut1( ) {
		
		
		return "user_mypage/userSignOut1";
	}
	
	/*쿠폰함*/
	@GetMapping("userCoupon")
	public String userCoupon( ) {
		
		
		return "user_mypage/userCoupon";
	}
	
	/*내가 쓴 리뷰*/
	@GetMapping("userReview")
	public String userReview( ) {
		
		
		return "user_mypage/userReview";
	}
	
	/*자주찾는가게*/
	@GetMapping("userRecommendStore")
	public String userRecommendStore( ) {
		
		
		return "user_mypage/userRecommendStore";
	}
	
	/*나의 신고 내역*/
	@GetMapping("userReport")
	public String userReport( ) {
		
		
		return "user_mypage/userReport";
	}
	
	/*리뷰 화면*/
	/*리뷰 수정*/
	/*리뷰 삭제*/
	
	
	
	
}
