package com.sd.mommyson.manager.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sd.mommyson.manager.service.ManagerService;

@Controller
@RequestMapping("/manager/*")
public class ManagerController {
	
//	private ManagerService managerService;
//	
//	@Autowired
//	public ManagerController(ManagerService managerService) {
//		this.managerService = managerService;
//	}
	
	/* 일반 회원 조회 */
	@GetMapping("normalMember")
	public void normalMember() {}
	
	/* 사업자 회원 조회 */
	@GetMapping("buisnessMember")
	public void buisnessMember() {}
	
	/* 블랙 회원 조회 */
	@GetMapping("blackMember")
	public void blackMember() {}
	
	/* 공지사항 */
	@GetMapping("noticeSelect")
	public void noticeSelect() {}
	
//	@GetMapping("noticeSelect")
//	public String noticeSelect(Model model) {
//		
//		/* ==== 현재 페이지 처리 ==== */
//		String currentPage = (String) model.getAttribute("currentPage");
//		int pageNo = 1;
//		
//		if(currentPage != null && !"".equals(currentPage)) {
//			pageNo = Integer.parseInt(currentPage);
//		}
//		
//		if(pageNo <= 0) {
//			pageNo = 1;
//		}
//		
//		System.out.println(currentPage);
//		System.out.println(pageNo);
//		
//		/* ==== 검색 처리 ==== */
//		String searchCondition = (String) model.getAttribute("searchCondition");
//		String searchValue = (String) model.getAttribute("searchValue");
//		
//		Map<String, String> searchMap = new HashMap<>();
//		
//		/* ==== 조건에 맞는 게시물 수 처리 ==== */
//		int totalCount = managerService.selectNoticeTotalCount(searchMap);
//		
//		System.out.println("totalInquiryBoardCount : " + totalCount);
//		
//		int limit = 10;
//		int buttonAmount = 10;
//		
//		Pagination pagination = null;
//		
//		/* ==== 검색과 selectOption 고르기 ==== */
//		if(searchValue != null && !"".equals(searchValue)) {
//			pagination = Pagination.getPagination(pageNo, totalCount, limit, buttonAmount, null, searchValue);
//		} else if(searchCondition != null && searchCondition != "전체") {
//			pagination = Pagination.getPagination(pageNo, totalCount, limit, buttonAmount, searchCondition, null);
//		} else {
//			pagination = Pagination.getPagination(pageNo, totalCount, limit, buttonAmount, "전체", null);
//		}
//		
//		System.out.println("pagination : " + pagination);
//		
//		List<Pagination> noticeList = managerService.selectNoticeList(pagination);
//		
//		System.out.println("리스트 확인 : " + noticeList);
//		
//		if(noticeList != null) {
//			model.addAttribute("pagination",pagination);
//			model.addAttribute("noticeList", noticeList);
//		} else {
//			System.out.println("조회실패");
//		}
//		
//		return "manager/noticeSelect";
//	}
	
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
	public void manageManager() {}
	
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
