package com.sd.mommyson.manager.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sd.mommyson.manager.common.Pagination;
import com.sd.mommyson.manager.dto.PostDTO;
import com.sd.mommyson.manager.service.ManagerService;
import com.sd.mommyson.member.dto.AuthDTO;
import com.sd.mommyson.member.dto.ManagerDTO;
import com.sd.mommyson.member.dto.MemberDTO;

@Controller
@RequestMapping("/manager/*")
public class ManagerController {
	
	private ManagerService managerService;
	private final BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	public ManagerController(ManagerService managerService, BCryptPasswordEncoder passwordEncoder) {
		this.managerService = managerService;
		this.passwordEncoder = passwordEncoder;
	}
	
	/* 일반 회원 조회 */
	/**
	 * @param model
	 * @param currentPage
	 * @author leeseungwoo
	 */
	@GetMapping("normalMember")
	public void normalMember(Model model, @RequestParam(value = "currentPage", required = false) String currentPage) {
		
		/* ==== 현재 페이지 처리 ==== */
		int pageNo = 1;
		
		System.out.println("currentPage : " + currentPage);
		
		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.parseInt(currentPage);
		}
		
		if(pageNo <= 0) {
			pageNo = 1;
		}
		
		System.out.println(currentPage);
		System.out.println(pageNo);
		
		/* ==== 검색 처리 ==== */
		String searchCondition = (String) model.getAttribute("searchCondition");
		String searchValue = (String) model.getAttribute("searchValue");
		
		Map<String, Object> searchMap = new HashMap<>();
		
		String memberTypeUser = "user";
		
		searchMap.put("memberTypeUser", memberTypeUser);
		
		System.out.println("searchMap : " + searchMap);
		
		/* ==== 조건에 맞는 게시물 수 처리 ==== */
		int totalCount = managerService.selectNormalMemberTotalCount(searchMap);
		
		System.out.println("totalInquiryBoardCount : " + totalCount);
		
		int limit = 10;
		int buttonAmount = 10;
		
		Pagination pagination = null;
		
		/* ==== 검색과 selectOption 고르기 ==== */
		if(searchValue != null && !"".equals(searchValue)) {
			pagination = Pagination.getPagination(pageNo, totalCount, limit, buttonAmount, searchCondition, searchValue);
			
		} else {
			pagination = Pagination.getPagination(pageNo, totalCount, limit, buttonAmount);
		}
		
		pagination.setSearchCondition("user");
		
		System.out.println("pagination : " + pagination);
		
		
		List<MemberDTO> normalMemberList = managerService.selectMember(pagination);
		System.out.println("리스트 확인 : " + normalMemberList);
		
		if(normalMemberList != null) {
			model.addAttribute("pagination", pagination);
			model.addAttribute("normalMemberList", normalMemberList);
		} else {
			System.out.println("조회실패");
		}
		
	}
	
	/* 회원삭제 */
	/**
	 * @param deleteMember
	 * @return
	 * @author leeseungwoo
	 */
	@PostMapping("deleteMember")
	public String deleteMember(@RequestParam("chkMember") int[] deleteMember) {

		List<Integer> deleteMemberList = new ArrayList<>();
		
		for(int i = 0; i < deleteMember.length; i++) {
			deleteMemberList.add(deleteMember[i]);
		}
		
		managerService.deleteMembers(deleteMemberList);
		
		return "redirect:normalMember";
	}
	
	/* 회원블랙등록 */
	/**
	 * @param chkMemberBlack
	 * @return
	 * @author leeseungwoo
	 */
	@GetMapping(value = "registBlack/{chkMember}", produces = "text/plain; charset=UTF-8;")
	@ResponseBody
	public String memberAddBlack(@PathVariable("chkMember") int[] chkMemberBlack) {
		
		List<Integer> memberAddBlackList = new ArrayList<>();
		
		for(int i = 0; i < chkMemberBlack.length; i++) {
			memberAddBlackList.add(chkMemberBlack[i]);
		}
		
		boolean result = managerService.modifyMemberAddBlack(memberAddBlackList);
		
		return result? "1" : "2";
	}
	
	
	/* 사업자 회원 조회 */
	/**
	 * @param model
	 * @param currentPage
	 * @author leeseungwoo
	 */
	@GetMapping("buisnessMember")
	public void buisnessMember(Model model, @RequestParam(value = "currentPage", required = false) String currentPage) {
		
		/* ==== 현재 페이지 처리 ==== */
		int pageNo = 1;
		
		System.out.println("currentPage : " + currentPage);
		
		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.parseInt(currentPage);
		}
		
		if(pageNo <= 0) {
			pageNo = 1;
		}
		
		System.out.println(currentPage);
		System.out.println(pageNo);
		
		/* ==== 검색 처리 ==== */
		String searchCondition = (String) model.getAttribute("searchCondition");
		String searchValue = (String) model.getAttribute("searchValue");
		
		Map<String, Object> searchMap = new HashMap<>();
		
		String memberTypeCeo = "ceo";
		
		searchMap.put("memberTypeCeo", memberTypeCeo);
		
		/* ==== 조건에 맞는 게시물 수 처리 ==== */
		int totalCount = managerService.selectNormalMemberTotalCount(searchMap);
		
		System.out.println("totalInquiryBoardCount : " + totalCount);
		
		int limit = 10;
		int buttonAmount = 10;
		
		Pagination pagination = null;
		
		/* ==== 검색과 selectOption 고르기 ==== */
		if(searchValue != null && !"".equals(searchValue)) {
			pagination = Pagination.getPagination(pageNo, totalCount, limit, buttonAmount, searchCondition, searchValue);
			
		} else {
			pagination = Pagination.getPagination(pageNo, totalCount, limit, buttonAmount);
		}
		
		pagination.setSearchCondition("ceo");
		
		System.out.println("pagination : " + pagination);
		
		List<MemberDTO> buisnessMemberList = managerService.selectMember(pagination);
		System.out.println("리스트 확인 : " + buisnessMemberList);
		
		if(buisnessMemberList != null) {
			model.addAttribute("pagination", pagination);
			model.addAttribute("buisnessMemberList", buisnessMemberList);
		} else {
			System.out.println("조회실패");
		}
		
	}
	
	/* 사업자 회원 삭제 */
	/**
	 * @param deleteMember
	 * @return
	 * @author leeseungwoo
	 */
	@PostMapping("deleteCeoMember")
	public String deleteCeoMember(@RequestParam("chkMember") int[] deleteMember) {
		
		List<Integer> deleteCeoMemberList = new ArrayList<>();
		
		for(int i = 0; i < deleteMember.length; i++) {
			deleteCeoMemberList.add(deleteMember[i]);
		}
		
		managerService.deleteMembers(deleteCeoMemberList);
		
		return "redirect:buisnessMember";
	}
	
	/* 사업자 상세 정보 조회 */
	/**
	 * @param ceoNum
	 * @return
	 * @author leeseungwoo
	 */
	@PostMapping(value = "ceoDetailInfo", produces = "Application/json; charset=UTF-8;")
	@ResponseBody
	public List<MemberDTO> ceoDetailInfo(@RequestParam("modalInfo") int ceoNum) {
		
		System.out.println("들어옴");
		
		Map<String, Object> ceoDetailInfo = new HashMap<>();
		ceoDetailInfo.put("ceoNum", ceoNum);
		
		List<MemberDTO> ceoDetailInfos = managerService.selectCeoDetailInfo(ceoDetailInfo);
		
		System.out.println("ceoDetailInfos : " + ceoDetailInfos);
		
		return ceoDetailInfos;
	}
	
	/* 블랙 회원 조회 */
	/**
	 * @param model
	 * @param currentPage
	 * @author leeseungwoo
	 */
	@GetMapping("blackMember")
	public void blackMember(Model model, @RequestParam(value = "currentPage", required = false) String currentPage) {
		
		/* ==== 현재 페이지 처리 ==== */
		int pageNo = 1;
		
		System.out.println("currentPage : " + currentPage);
		
		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.parseInt(currentPage);
		}
		
		if(pageNo <= 0) {
			pageNo = 1;
		}
		
		System.out.println(currentPage);
		System.out.println(pageNo);
		
		/* ==== 검색 처리 ==== */
		String searchCondition = (String) model.getAttribute("searchCondition");
		String searchValue = (String) model.getAttribute("searchValue");
		
		Map<String, Object> searchMap = new HashMap<>();
		
		String blackMember = "black";
		
		searchMap.put("blackMember", blackMember);
		
		/* ==== 조건에 맞는 게시물 수 처리 ==== */
		int totalCount = managerService.selectNormalMemberTotalCount(searchMap);
		
		System.out.println("totalInquiryBoardCount : " + totalCount);
		
		int limit = 10;
		int buttonAmount = 10;
		
		Pagination pagination = null;
		
		/* ==== 검색과 selectOption 고르기 ==== */
		if(searchValue != null && !"".equals(searchValue)) {
			pagination = Pagination.getPagination(pageNo, totalCount, limit, buttonAmount, searchCondition, searchValue);
			
		} else {
			pagination = Pagination.getPagination(pageNo, totalCount, limit, buttonAmount);
		}
		
		pagination.setSearchCondition("black");
		
		System.out.println("pagination : " + pagination);
		
		List<MemberDTO> blackMemberList = managerService.selectMember(pagination);
		System.out.println("리스트 확인 : " + blackMemberList);
		
		if(blackMemberList != null) {
			model.addAttribute("pagination", pagination);
			model.addAttribute("blackMemberList", blackMemberList);
		} else {
			System.out.println("조회실패");
		}
		
	}
	
	/* 공지사항 */
//	@GetMapping("noticeSelect")
//	public void noticeSelect() {}
	
	@GetMapping("noticeSelect")
	public String noticeSelect(Model model, @RequestParam(value = "currentPage", required = false) String currentPage) {
		
		/* ==== 현재 페이지 처리 ==== */
		int pageNo = 1;
		
		System.out.println("currentPage : " + currentPage);
		
		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.parseInt(currentPage);
		}
		
		if(pageNo <= 0) {
			pageNo = 1;
		}
		
		System.out.println(currentPage);
		System.out.println(pageNo);
		
		/* ==== 검색 처리 ==== */
		String searchCondition = (String) model.getAttribute("searchCondition");
		String searchValue = (String) model.getAttribute("searchValue");
		
		Map<String, String> searchMap = new HashMap<>();
		
		/* ==== 조건에 맞는 게시물 수 처리 ==== */
		int totalCount = managerService.selectNoticeTotalCount(searchMap);
		
		System.out.println("totalInquiryBoardCount : " + totalCount);
		
		int limit = 10;
		int buttonAmount = 10;
		
		Pagination pagination = null;
		
		/* ==== 검색과 selectOption 고르기 ==== */
		if(searchValue != null && !"".equals(searchValue)) {
			pagination = Pagination.getPagination(pageNo, totalCount, limit, buttonAmount, null, searchValue);
		} else if(searchCondition != null && searchCondition != "전체") {
			pagination = Pagination.getPagination(pageNo, totalCount, limit, buttonAmount, searchCondition, null);
		} else {
			pagination = Pagination.getPagination(pageNo, totalCount, limit, buttonAmount, "전체", null);
		}
		
		System.out.println("pagination : " + pagination);
		
		List<PostDTO> noticeList = managerService.selectNoticeList(pagination);
		
		System.out.println("리스트 확인 : " + noticeList);
		
		if(noticeList != null) {
			model.addAttribute("pagination",pagination);
			model.addAttribute("noticeList", noticeList);
		} else {
			System.out.println("조회실패");
		}
		
		return "manager/noticeSelect";
	}
	
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
	public void manageManager(Model model, HttpSession session) {
		List<AuthDTO> authList = managerService.selectAuth();
		List<ManagerDTO> managerList = managerService.selectManagers(((MemberDTO) session.getAttribute("loginMember")).getMemId());
		model.addAttribute("managerList", managerList);
		model.addAttribute("authList", authList);
	}
	
	@PostMapping("manageManager")
	@ResponseBody
	public int updateAuth(@RequestParam("memCode") int memCode, @RequestParam("selected") int selected) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("memCode", memCode);
		map.put("selected", selected);
		
		int result = managerService.updateAuth(map);
		
		return result;
	}
	
	/* 관리자 아이디 생성 */
	@GetMapping("createManager")
	public void createManager() {}
	
	@PostMapping("createManager")
	public String createManager(@ModelAttribute MemberDTO member, @RequestParam int code) {
		System.out.println(member);
		member.setMemPwd(passwordEncoder.encode(member.getMemPwd()));
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("member", member);
		map.put("code", code);
		int result = managerService.insertNewManager(map);
		return "redirect:/manager/manageManager";
	}
	
	/* 관리자 삭제 */
	@GetMapping("deleteManager/{cks}")
	public String deleteManager(@PathVariable("cks") String[] arr, Model model) {
		
		List<String> list = new ArrayList<String>();
		for(String b : arr) {
			list.add(b);
		}
		
		int result = managerService.deleteManager(list);
		
		if(result > 0) {
			model.addAttribute("result", "삭제에 성공했습니다.");
		} else {
			model.addAttribute("result", "삭제에 실패했습니다.");
		}
		
		return "redirect:/manager/manageManager";
	}
	
	/* 관리자 아이디 중복체크 */
	@PostMapping(value = "idDupCheck", produces = "text/plain; charset=UTF-8;")
	@ResponseBody
	public String idDupCheck(@RequestParam("memId") String memId) {
		
		String message = "";
		
		int count = managerService.idDupCheck(memId);
		System.out.println(count);
		
		if(count > 0) {
			message = "사용이 불가능한 아이디입니다.";
		} else {
			message = "사용 가능한 아이디입니다.";
		}
		
		System.out.println(message);
		
		return message;
	}
	
	/* 관리자 정산 */
	@GetMapping("taxAdjustment")
	public void taxAdjustment() {}
	
	/* 중개이용료 리스트 */
	@GetMapping("taxDetailAdjustment")
	public void taxDetailAdjustment() {}
}
