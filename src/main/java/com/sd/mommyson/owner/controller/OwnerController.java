package com.sd.mommyson.owner.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/owner/*")
public class OwnerController {
	
	/* 사업자 마이페이지 메인화면 */
	@GetMapping("ownerMain")
	public void ownerMypage() {}
	
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
	
	
}
