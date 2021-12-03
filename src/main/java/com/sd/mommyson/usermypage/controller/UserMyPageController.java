package com.sd.mommyson.usermypage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/userMyPage")
public class UserMyPageController {
//양윤제
	
	/*주문내역*/
	@GetMapping(value={"myOrderList","/"})
	public String myOrderList( ) {
		
		
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
