package com.sd.mommyson.user.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sd.mommyson.manager.common.Pagination;
import com.sd.mommyson.manager.service.ManagerService;
import com.sd.mommyson.member.dto.StoreDTO;
import com.sd.mommyson.user.dto.PostDTO;
import com.sd.mommyson.user.service.UserService;

@Controller
//@SessionAttributes("")
@RequestMapping("/user/*")
public class UserController {
	
	private UserService userService;
	private ManagerService managerService;
	
	@Autowired
	public UserController(UserService userService, ManagerService managerService) {
		this.userService = userService;
		this.managerService = managerService;
	}
	
	
	/**@author 양윤제
	 * @category 고객센터 메인
	 */
	@GetMapping("ucc")
	public String userCustomerServiceMain() {
		
		return "user/userCustomerServiceMain";
	}
	
	/**
	 * @author 양윤제
	 * @category1:1 상담내역
	 */
	@GetMapping("ucc/MTMConsult")
	public String userCustomerServiceCenterMTMConsult() {
		
		return "user/userCustomerServiceCenterMTMConsult";
	}
	
	/**
	 * @author 양윤제
	 * @category 1:1문의
	 */
	@GetMapping("ucc/MTMQnA")
	public String userCustomerServiceCenterMTMQnA() {
		
		return "user/userCustomerServiceCenterMTMQnA";
	}
	
	/**@author 양윤제
	 * @category 1:1상담내용 수정
	 */
	@GetMapping("ucc/MTMChange")
	public String userCustomerServiceCenterMTMQnAChange() {
		
		return "user/userCustomerServiceCenterMTMQnAChange";
	}
	
	
	/**@author 양윤제
	 * @category 1:1상담내용 열람
	 */
	@GetMapping("ucc/MTMOpen")
	public String userCustomerServiceCenterMTMQnADetail() {
		
		return "user/userCustomerServiceCenterMTMQnADetail";
	}
	
	/**@author 양윤제
	 * @category 공지사항 출력
	 */
	@GetMapping("ucc/uccNoticeSelect")
	public String userCustomerServiceCenterNoticeSelect(HttpSession session) {
		System.out.println("공지사항 콘트롤러 진입");
		List<PostDTO> noticeList = userService.selectNotice();
		System.out.println("테스트 공지리스트 : " + noticeList);
		
		return "user/userCustomerServiceCenterNoticeSelect";
	}
	
	/**@author 양윤제
	 * @category 공지사항 내용 출력
	 */
	@GetMapping("ucc/uccNoticeDetail")
	public String userCustomerServiceCenterNoticeDetail() {
		
		return "user/userCustomerServiceCenterNoticeDetail";
	}
	
	/**@author 양윤제
	 * @category 자주하는 질문
	 */
	@GetMapping("ucc/uccOftenQuestion")
	public String userCustomerServiceOftenQuestionBase() {
		
		return "user/userCustomerServiceOftenQuestionBase";
	}
	

	
	@GetMapping("cart")
	public String cart() {
		return "user/shoppingBasket";
	}
	
	/**
	 * @author ShinHyungi
	 * @param mv
	 * @param category
	 * @param session
	 * @return mv
	 */
	@GetMapping("category/{category}")
	public ModelAndView categoryPage(ModelAndView mv,@PathVariable String category, HttpSession session) {
		List<HashMap<String, String>> categoryList = (List<HashMap<String, String>>) session.getAttribute("categoryList");
		
		String cg = "";
		for(int i = 0; i < categoryList.size(); i++) {
			if(categoryList.get(i).get("CATEGORY_CODE").equals(category)) {
				cg = categoryList.get(i).get("CATEGORY_NAME");
			}
		}
		
		if(cg.equals("")) {
			cg = "오늘의 추천";
		}
		
		mv.addObject("category", cg);
		mv.setViewName("user/category_page");
		
		return mv;
	}
	
	@GetMapping("sale")
	public void todaySale() {}
	
	/**
	 * @author ShinHyungi
	 * @param mv
	 * @param type
	 * @param model
	 * @return mv
	 */
	@GetMapping("famousStore/{type}")
	public ModelAndView famousStore(ModelAndView mv, @PathVariable String type, Model model) {
		
		String cg = "";
		switch(type) {
			case "new" : cg = "신규 반찬 가게"; break;
			case "famous" : cg = "우리동네 인기 맛집"; break;
		}
		StoreDTO store = null;
		if(cg.equals("new")) {
			
		}
		
		/* ==== 현재 페이지 처리 ==== */
		String currentPage = (String) model.getAttribute("currentPage");
		int pageNo = 1;
		
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
		
		List<Pagination> noticeList = managerService.selectNoticeList(pagination);
		
		System.out.println("리스트 확인 : " + noticeList);
		
		if(noticeList != null) {
			model.addAttribute("pagination",pagination);
			model.addAttribute("noticeList", noticeList);
		} else {
			System.out.println("조회실패");
		}
		
		mv.addObject("type", cg);
		mv.setViewName("user/famousStore");
		
		return mv;
	}
	
	@GetMapping("storepage/{memCode}")
	public String storePage(@PathVariable String memCode) {
		
		return "user/store_page";
	}
}
