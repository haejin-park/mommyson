package com.sd.mommyson.owner.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.sd.mommyson.member.dto.MemberDTO;
import com.sd.mommyson.owner.dto.CouponDTO;
import com.sd.mommyson.owner.service.OwnerService;
import com.sd.mommyson.user.dto.ReviewDTO;

@Controller
@RequestMapping("/owner/*")
@SessionAttributes({"loginMember","owner"})
public class OwnerController {
	
	private OwnerService ownerService;
	
	@Autowired
	public OwnerController(OwnerService ownerService) {
		
		this.ownerService = ownerService;
	}
	
	/* 사업자 마이페이지 메인화면 */
	@RequestMapping("ownerMain")
	public String ownerMypage(@ModelAttribute("loginMember") MemberDTO member, Model model) {
		
		MemberDTO owner = ownerService.selectOwner(member);
		
		System.out.println(owner);

		model.addAttribute("owner", owner);
		
		return "owner/ownerMain";
	}
	
	/* 쿠폰 발행 */
	@GetMapping("coupon")
	public String coupon(@ModelAttribute("owner") MemberDTO member, Model model) {
		
		List<CouponDTO> coupon = ownerService.selectCoupon(member);
		System.out.println(coupon);
		
		//					items 이름 , 리스트이름
		model.addAttribute( "coupon" ,coupon);
		
		
		return "owner/coupon";
	}
	
	@PostMapping("coupon")
	public String couponInsert(@ModelAttribute CouponDTO coupon, Model model, HttpSession session) {
	
		coupon.setCpName("cpName");
		coupon.setdCcon(Integer.parseInt("dCcon"));
		coupon.setDisWon(Integer.parseInt("disWon"));
//		coupon.setEndDate(java.sql.Date("endDate"));
		
		return "redirect:/coupon";
	}
	
	/* 가게정보 수정 */
	@GetMapping("modifyStore")
	public void modifyStore(){}
	
	/* 상품등록 */
	@GetMapping("productRegist") 
	public void productRegist(){
		
	}
	
	/* 판매상품 관리 */
	@GetMapping("productManagement")
	public void productManagement() {}
	
	
	/* 리뷰 */
	@GetMapping("review")
	public String review(@ModelAttribute ReviewDTO review, Model model) {
		
		List<ReviewDTO> reviews = ownerService.selectReview(review);
		System.out.println(reviews);
		
		return "";	
		
	}
	
	
	
	
	
	
}
