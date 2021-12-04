package com.sd.mommyson.manager.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sd.mommyson.manager.service.ManagerService;
import com.sd.mommyson.member.dto.ManagerDTO;
import com.sd.mommyson.member.dto.MemberDTO;
import com.sd.mommyson.member.service.MemberService;

@Controller
@RequestMapping("/manager/*")
public class ManagerController {
	
	private ManagerService managerService;
	
	@Autowired
	public ManagerController(ManagerService managerService) {
		this.managerService = managerService;
	}
	
	/* 일반 회원 조회 */
	@GetMapping("normalMember")
	public void normalMember(MemberDTO member, Model model) {
		
		List<MemberDTO> normalMemberList = managerService.normalMemberSelect(member);
		System.out.println("normalMemberList : " + normalMemberList);
		model.addAttribute("normalMemberList", normalMemberList);
	}
	
	/* 회원삭제 */
	@PostMapping("deleteMember")
	public void deleteMember(@RequestParam("chkMember") int[] deleteMembers) {
		
		
		
		
		
		managerService.deleteMembers(deleteMembers);
		
	}
	
	/* 사업자 회원 조회 */
	@GetMapping("buisnessMember")
	public void buisnessMember() {}
	
	/* 블랙 회원 조회 */
	@GetMapping("blackMember")
	public void blackMember() {}
	
	/* 공지사항 */
	@GetMapping("noticeSelect")
	public void noticeSelect() {}
	
	/* 공지사항 상세보기 */
	@GetMapping("noticeDetailView")
	public void noticeDetailView() {}
	
	/* 자주하는 질문 */
	@GetMapping("oftenQuestion")
	public void oftenQuestion() {}
	
	/* 1:1문의 사업자*/
	@GetMapping("businessInquiry")
	public void businessInquiry() {}
	
	/* 1:1문의 소비자 */
	@GetMapping("normalInquiry")
	public void normalInquiry() {}
	
	/* 가게 신고 현황 */
	@GetMapping("statusStoreWarning")
	public void statusStoreWarning() {}
	
	/* 배너설정 */
	@GetMapping("bannerManage")
	public void bannerManage() {}
	
	/* 태그설정 */
	@GetMapping("tagManage")
	public void tagManage() {}
	
	/* 카테고리 설정 */
	@GetMapping("categoryManage")
	public void categoryManage() {}
	
	/* 관리자 조회 */
	@GetMapping("manageManager")
	public void manageManager() {
		
		List<ManagerDTO> managerList = managerService.selectManagers();
	}
	
	/* 관리자 아이디 생성 */
	@GetMapping("createManager")
	public void createManager() {}
	
	/* 관리자 정산 */
	@GetMapping("taxAdjustment")
	public void taxAdjustment() {}
	
	/* 중개이용료 리스트 */
	@GetMapping("taxDetailAdjustment")
	public void taxDetailAdjustment() {}
}
