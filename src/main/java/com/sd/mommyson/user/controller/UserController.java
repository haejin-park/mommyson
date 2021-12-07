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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sd.mommyson.manager.dto.PostDTO;
import com.sd.mommyson.manager.service.ManagerService;
import com.sd.mommyson.user.common.Pagenation;
import com.sd.mommyson.user.common.SelectCriteria;
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
	public String userCustomerServiceCenterNoticeSelect(HttpSession session, @RequestParam(required = false) Map<String, String> parameters) {
		System.out.println("공지사항 콘트롤러 진입");
		
		/* 목록보기를 눌렀을 시 가장 처음에 보여지는 페이지는 1페이지이다.
		 * 파라미터로 전달되는 페이지가 있는 경우 currentPage는 파라미터로 전달받은 페이지 수 이다.
		 * */
		String currentPage = parameters.get("currentPage");
		
		int pageNo = 1;
		System.out.println("currnetPage : " + currentPage);
		
		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.parseInt(currentPage);
		}
		
		
		/* 0보다 작은 숫자값을 입력해도 1페이지를 보여준다 */
		if(pageNo <= 0) {
			pageNo = 1;
		}
		
		String searchCondition = parameters.get("searchCondition");
		String searchValue = parameters.get("searchValue");
		
		System.out.println("searchCondition : " + searchCondition);
		System.out.println("searchValue : " + searchValue);
		System.out.println("pageNo : " + pageNo);
		
		Map<String, String> searchMap = new HashMap<>();
		searchMap.put("searchCondition", searchCondition);
		searchMap.put("searchValue", searchValue);
		System.out.println("searchMap : " + searchMap);
		
				

		/* 전체 게시물 수가 필요하다.
		 * 데이터베이스에서 먼저 전체 게시물 수를 조회해올 것이다.
		 * 검색조건이 있는 경우 검색 조건에 맞는 전체 게시물 수를 조회한다.
		 * */
		
		int totalCount = userService.selectTotalCount(session, searchMap);
		
		System.out.println("totalPostCount : " + totalCount);
		
		/* 한 페이지에 보여 줄 게시물 수 */
		int limit = 10;		//얘도 파라미터로 전달받아도 된다.
		/* 한 번에 보여질 페이징 버튼의 갯수 */
		int buttonAmount = 5;
		
		/* 페이징 처리를 위한 로직 호출 후 페이징 처리에 관한 정보를 담고 있는 인스턴스를 반환받는다. */
		SelectCriteria selectCriteria = null;
		
		if(searchCondition != null && !"".equals(searchCondition)) {
			selectCriteria = Pagenation.getSelectCriteria(pageNo, totalCount, limit, buttonAmount, searchCondition, searchValue);
		} else {
			selectCriteria = Pagenation.getSelectCriteria(pageNo, totalCount, limit, buttonAmount);
		}
		
		System.out.println(selectCriteria);
		List<PostDTO> noticeList = userService.selectNotice(selectCriteria);
//		System.out.println("테스트 공지리스트 : " + noticeList);
		
		
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
		if(cg.equals("new")) {
			
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
