package com.sd.mommyson.user.controller;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.io.filefilter.FalseFileFilter;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sd.mommyson.manager.common.Pagination;
import com.sd.mommyson.manager.dto.PostDTO;
import com.sd.mommyson.manager.service.ManagerService;
import com.sd.mommyson.member.dto.MemberDTO;
import com.sd.mommyson.member.dto.StoreDTO;
import com.sd.mommyson.owner.dto.ProductDTO;
import com.sd.mommyson.user.common.Pagenation;
import com.sd.mommyson.user.common.SelectCriteria;
import com.sd.mommyson.user.dto.ReviewDTO;
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
	public String userCustomerServiceMain(HttpSession session, Model mv, @RequestParam(value = "fqabatch", required = false) String pr) {
		
		List<PostDTO> noticeMainCon = userService.selectRecentNotice();
		System.out.println("고객 메인 공지사항" + noticeMainCon);
		
		List<PostDTO> importantNotice = userService.selectImportantNotice();
		System.out.println("고객 메인 중요 공지사항" + importantNotice);
		
		List<PostDTO> oftenFqa = userService.selectOftenFqa();
		System.out.println("고객센터 자주묻는 질문" + oftenFqa);
		
		mv.addAttribute("noticeMainCon", noticeMainCon);
		mv.addAttribute("importantNotice", importantNotice);
		mv.addAttribute("oftenFqa", oftenFqa);
		
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
	 * @category 공지사항 게시글 목룍 출력
	 */
	@GetMapping("ucc/uccNoticeSelect")
	public String userCustomerServiceCenterNoticeSelect(HttpSession session, Model mv, @RequestParam(required = false) Map<String, String> parameters) {
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
		
		int totalCount = userService.selectTotalCount(searchMap);
		
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
		
		System.out.println("selectCriteria : " + selectCriteria);
		List<PostDTO> noticeList = userService.selectNotice(selectCriteria);
		System.out.println(" 공지리스트 : " + noticeList);
		
		/*중요공지 출력*/
		
		List<PostDTO> importantNotice = userService.selectImportantNotice();
		System.out.println("중요 공지 사항 리스트 : " + importantNotice);
		
		mv.addAttribute("noticeList", noticeList);
		mv.addAttribute("selectCriteria", selectCriteria);
		mv.addAttribute("importantNotice", importantNotice);
		
		return "user/userCustomerServiceCenterNoticeSelect";
	}
	
	/**@author 양윤제
	 * @category 공지사항 게시글 내용 출력
	 */
	@GetMapping("ucc/uccNoticeDetail")
	public String userCustomerServiceCenterNoticeDetail(HttpSession session,  Model mv, @RequestParam("postNo") String postInfo) {
		
		System.out.println("공지사항 내용 출력 콘트롤러 진입");
		int postNo = Integer.parseInt(postInfo);
		System.out.println("PostNo : " + postNo);
		
		/*조회수 수정*/
		int result = userService.updateIncrementBoardCount(postNo);
		if( result > 0) {
			System.out.println("조회수 증가 성공");
		} else {
			System.out.println("조회수 증가 실패");
		}

		List<PostDTO> noticeContentList = userService.selectNoticeContents(postNo);
		
		System.out.println("공지사항 내용출력 " + noticeContentList);
		
		mv.addAttribute("noticeContentList",noticeContentList);
		
		return "user/userCustomerServiceCenterNoticeDetail";
	}
	
	/**@author 양윤제
	 * @category 자주하는 질문(전체)
	 */
	@GetMapping("ucc/uccOftenQuestion")
	public String userFqaMain(HttpSession session, Model mv, @RequestParam(required = false) Map<String, String> parameters) {
		
		System.out.println("FQA관련 메인 콘트롤러 진입");
		
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
		
		String searchCondition = "total";
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
		
		int totalCount = userService.selectFqaTotalCount(searchMap);
		
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
		
		System.out.println("selectCriteria : " + selectCriteria);
		
		List<PostDTO> fqaList = userService.selectFqaList(selectCriteria); 
		
		System.out.println("fqa회원관리 : " + fqaList);
		
		
		/* FQA title 전달 */
		
		String boardTitle = "전체";
		
		
		mv.addAttribute("fqaList", fqaList);
		mv.addAttribute("selectCriteria", selectCriteria);
		mv.addAttribute("boardTitle", boardTitle);
		
		return "user/userCustomerServiceOftenQuestionBase";
	}
	
	
	/**@author 양윤제
	 * @category 자주하는 질문(회원가입관련)
	 */
	@GetMapping("ucc/memberJoinFqa")
	public String userMemberJoinFqa(HttpSession session, Model mv, @RequestParam(required = false) Map<String, String> parameters) {
		
		System.out.println("FQA 회원가입 관련 콘트롤러 진입");
		
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
		
		String searchCondition = "memberJoinQuestion";
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
		
		int totalCount = userService.selectFqaTotalCount(searchMap);
		
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
		
		System.out.println("selectCriteria : " + selectCriteria);
		
		List<PostDTO> fqaList = userService.selectFqaList(selectCriteria); 
		
		System.out.println("fqa회원관리 : " + fqaList);
		/* FQA title 전달 */
		System.out.println("테스트: " + fqaList.get(0));

		String boardTitle = "회원가입";
		
		
		mv.addAttribute("fqaList", fqaList);
		mv.addAttribute("selectCriteria", selectCriteria);
		mv.addAttribute("boardTitle", boardTitle);
		
		return "user/userCustomerServiceOftenQuestionBase";
	}
	
	/**@author 양윤제
	 * @return 자주하는 질문(결제주문)
	 */
	@GetMapping("ucc/paycheckFqa")
	public String userPaycheckFqa(HttpSession session, Model mv, @RequestParam(required = false) Map<String, String> parameters) {
		
		

		System.out.println("FQA 결제주문 관련 콘트롤러 진입");
		
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
		
		String searchCondition = "billAndOrderQuestion";//BOARD_TBL, D_TYPE
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
		
		int totalCount = userService.selectFqaTotalCount(searchMap);
		
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
		
		System.out.println("selectCriteria : " + selectCriteria);
		
		List<PostDTO> fqaList = userService.selectFqaList(selectCriteria); 
		
		System.out.println("fqa결제주문 : " + fqaList);
		
		/* FQA title 전달 */
		
		String boardTitle = "결제/주문";
		
		mv.addAttribute("fqaList", fqaList);
		mv.addAttribute("selectCriteria", selectCriteria);
		mv.addAttribute("boardTitle", boardTitle);
		
		return "user/userCustomerServiceOftenQuestionBase";
	}
	
	/**@author 양윤제
	 * @return 자주하는 질문(리뷰관리)
	 */
	@GetMapping("ucc/reviewFqa")
	public String userReviewFqa(HttpSession session, Model mv, @RequestParam(required = false) Map<String, String> parameters) {
		
		System.out.println("FQA 리뷰관리 관련 콘트롤러 진입");
		
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
		
		String searchCondition = "reviewManagementQuestion";//BOARD_TBL, D_TYPE
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
		
		int totalCount = userService.selectFqaTotalCount(searchMap);
		
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
		
		System.out.println("selectCriteria : " + selectCriteria);
		
		List<PostDTO> fqaList = userService.selectFqaList(selectCriteria); 
		
		System.out.println("fqa리뷰관리 : " + fqaList);
		
		/* FQA title 전달 */
		
		String boardTitle = "리뷰관리";
		
		
		mv.addAttribute("fqaList", fqaList);
		mv.addAttribute("selectCriteria", selectCriteria);
		mv.addAttribute("boardTitle", boardTitle);
		
		return "user/userCustomerServiceOftenQuestionBase";
	}
	
	/**@author 양윤제
	 * @return 자주하는 질문(이용문의)
	 */
	@GetMapping("ucc/usingFqa")
	public String userUsingFqa(HttpSession session, Model mv, @RequestParam(required = false) Map<String, String> parameters) {
		
		
		System.out.println("FQA 이용문의 관련 콘트롤러 진입");
		
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
		
		String searchCondition = "userQuestion";//BOARD_TBL, D_TYPE
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
		
		int totalCount = userService.selectFqaTotalCount(searchMap);
		
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
		
		System.out.println("selectCriteria : " + selectCriteria);
		
		List<PostDTO> fqaList = userService.selectFqaList(selectCriteria); 
		
		System.out.println("fqa이용문의 : " + fqaList);
		
		/* FQA title 전달 */
		
		String boardTitle = "이용문의";
		
		
		mv.addAttribute("fqaList", fqaList);
		mv.addAttribute("selectCriteria", selectCriteria);
		mv.addAttribute("boardTitle", boardTitle);
		
		
		
		return "user/userCustomerServiceOftenQuestionBase";
	}
	
	/**@author 양윤제
	 * @return 자주하는 질문(불편관리)
	 */
	@GetMapping("ucc/inconFqa")
	public String userInconFqa(HttpSession session, Model mv, @RequestParam(required = false) Map<String, String> parameters) {
		

		System.out.println("FQA 불편관리 관련 콘트롤러 진입");
		
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
		
		String searchCondition = "inconvenienceQuestion";//BOARD_TBL, D_TYPE
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
		
		int totalCount = userService.selectFqaTotalCount(searchMap);
		
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
		
		System.out.println("selectCriteria : " + selectCriteria);
		
		List<PostDTO> fqaList = userService.selectFqaList(selectCriteria); 
		
		System.out.println("fqa불편관리 : " + fqaList);
		
		/* FQA title 전달 */
		
		String boardTitle = "불편관리";
		
		
		mv.addAttribute("fqaList", fqaList);
		mv.addAttribute("selectCriteria", selectCriteria);
		mv.addAttribute("boardTitle", boardTitle);
		
		return "user/userCustomerServiceOftenQuestionBase";
	}
	
	/**@author 양윤제
	 * @return 자주하는 질문(기타)
	 */
	@GetMapping("ucc/etcFqa")
	public String userEtcFqa(HttpSession session, Model mv, @RequestParam(required = false) Map<String, String> parameters) {		
		
		System.out.println("FQA 불편관리 관련 콘트롤러 진입");
		
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
		
		String searchCondition = "etcQuestion";//BOARD_TBL, D_TYPE
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
		
		int totalCount = userService.selectFqaTotalCount(searchMap);
		
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
		
		System.out.println("selectCriteria : " + selectCriteria);
		
		List<PostDTO> fqaList = userService.selectFqaList(selectCriteria); 
		
		System.out.println("fqa기타 : " + fqaList);
		
		/* FQA title 전달 */
		
		String boardTitle = "기타";
		
		
		mv.addAttribute("fqaList", fqaList);
		mv.addAttribute("selectCriteria", selectCriteria);
		mv.addAttribute("boardTitle", boardTitle);
		
		return "user/userCustomerServiceOftenQuestionBase";
	}
	

	
	/**@author ShinHyungi
	 * @return
	 */
	@GetMapping("cart")
	public String cart() {
		return "user/shoppingBasket";
	}
	
	/**@author ShinHyungi
	 * @param amount
	 * @param sdCode
	 * @param session
	 * @return
	 */
	@PostMapping("cart")
	public String addCart(@RequestParam("amount") int amount, @RequestParam("sdCode") int sdCode, HttpSession session) {
		MemberDTO member = (MemberDTO) session.getAttribute("loginMember");
		System.out.println(member);
		Map<String, Integer> order = new HashMap<String, Integer>();
		order.put("sdCode", sdCode);
		order.put("amount", amount);
		order.put("memCode", member.getMemCode());
		
		userService.insertShoppingBasket(order);
		
		return "user/shoppingBasket";
	}
	
	/**
	 * @author ShinHyungi
	 * @param mv
	 * @param category
	 * @param session
	 * @return mv
	 */
	@GetMapping("category")
	public String categoryPage(Model model,@RequestParam(value = "category") String category,@RequestParam(value = "currentPage", required = false) String currentPage , HttpSession session) {
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
		searchMap.put("searchValue", searchValue);
		searchMap.put("category", category);
		System.out.println("searchMap : " + searchMap);
		/* ==== 조건에 맞는 게시물 수 처리 ==== */
		int totalCount = userService.selectProductTotalCount(searchMap);
		
		System.out.println("totalInquiryBoardCount : " + totalCount);
		
		int limit = 10;
		int buttonAmount = 10;
		
		Pagination pagination = null;
		if(searchCondition == null && "".equals(searchCondition)) {
			searchCondition = category;
		}
		
		/* ==== 검색과 selectOption 고르기 ==== */
		if(searchValue != null && !"".equals(searchValue)) {
			pagination = Pagination.getPagination(pageNo, totalCount, limit, buttonAmount, null, searchValue);
		} else if(searchCondition != null && searchCondition != "전체") {
			pagination = Pagination.getPagination(pageNo, totalCount, limit, buttonAmount, searchCondition, null);
		} else {
			pagination = Pagination.getPagination(pageNo, totalCount, limit, buttonAmount, category, null);
		}
		
		System.out.println("pagination : " + pagination);
		
		List<ProductDTO> productList = userService.selectProductList(pagination);
		
		System.out.println("리스트 확인 : " + productList);
		
		if(productList != null) {
			model.addAttribute("pagination",pagination);
			model.addAttribute("productList", productList);
		} else {
			System.out.println("조회실패");
		}
		
		model.addAttribute("category", cg);
		
		return "user/category_page";
	}
	
	/**@author ShinHyungi
	 * @param model
	 * @param currentPage
	 */
	@GetMapping("sale")
	public void todaySale(Model model, @RequestParam(value = "currentPage", required = false) String currentPage) {
		
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
		searchMap.put("searchValue", searchValue);
		
		System.out.println("searchMap : " + searchMap);
		/* ==== 조건에 맞는 게시물 수 처리 ==== */
		int totalCount = userService.selectProductTotalCount(searchMap);
		
		System.out.println("totalInquiryBoardCount : " + totalCount);
		
		int limit = 12;
		int buttonAmount = 10;
		
		Pagination pagination = null;
		
		/* ==== 검색과 selectOption 고르기 ==== */
		if(searchValue != null && !"".equals(searchValue)) {
			pagination = Pagination.getPagination(pageNo, totalCount, limit, buttonAmount, null, searchValue);
		} else if(searchCondition != null && searchCondition != "전체") {
			pagination = Pagination.getPagination(pageNo, totalCount, limit, buttonAmount, searchCondition, null);
		} else {
			pagination = Pagination.getPagination(pageNo, totalCount, limit, buttonAmount, "sale", null);
		}
		
		System.out.println("pagination : " + pagination);
		
		List<ProductDTO> productList = userService.selectProductList(pagination);
		
		System.out.println("리스트 확인 : " + productList);
		
		if(productList != null) {
			model.addAttribute("pagination",pagination);
			model.addAttribute("productList", productList);
		} else {
			System.out.println("조회실패");
		}
	}
	
	/**
	 * @author ShinHyungi
	 * @param mv
	 * @param type
	 * @param model
	 * @return mv
	 */
	@GetMapping("famousStore")
	public String famousStore(@RequestParam(value = "type", required = false) String type, @RequestParam(value = "currentPage", required = false) String currentPage , Model model) {
		
		String cg = "";
		switch(type) {
			case "new" : cg = "신규 반찬 가게"; break;
			case "famous" : cg = "우리동네 인기 맛집"; break;
		}

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
		searchMap.put("searchValue", searchValue);
		searchMap.put("type", type);
		System.out.println("searchMap : " + searchMap);
		/* ==== 조건에 맞는 게시물 수 처리 ==== */
		int totalCount = userService.selectStoreTotalCount(searchMap);
		
		System.out.println("totalInquiryBoardCount : " + totalCount);
		
		int limit = 12;
		int buttonAmount = 10;
		
		Pagination pagination = null;
		if(searchCondition == null && "".equals(searchCondition)) {
			searchCondition = type;
		}
		
		/* ==== 검색과 selectOption 고르기 ==== */
		if(searchValue != null && !"".equals(searchValue)) {
			pagination = Pagination.getPagination(pageNo, totalCount, limit, buttonAmount, null, searchValue);
		} else if(searchCondition != null && searchCondition != "전체") {
			pagination = Pagination.getPagination(pageNo, totalCount, limit, buttonAmount, searchCondition, null);
		} else {
			pagination = Pagination.getPagination(pageNo, totalCount, limit, buttonAmount, "전체", null);
		}
		
		System.out.println("pagination : " + pagination);
		
		List<StoreDTO> storeList = userService.selectStoreList(pagination);
		
		System.out.println("리스트 확인 : " + storeList);
		
		if(storeList != null) {
			model.addAttribute("pagination",pagination);
			model.addAttribute("storeList", storeList);
		} else {
			System.out.println("조회실패");
		}
				
		model.addAttribute("type", cg);
		model.addAttribute("realType", type);
		
		return "user/famousStore";
	}
	
	/**@author ShinHyungi
	 * @param memCode
	 * @param model
	 * @param currentPage
	 * @return
	 */
	@GetMapping("storepage")
	public String storePage(@RequestParam String memCode, Model model, @RequestParam(value = "currentPage", required = false) String currentPage) {
		
		Map<String, String> store = userService.selectStoreByMemCode(memCode);
		List<ProductDTO> products = userService.selectProducts(memCode);
		List<String> jjimList = userService.selectJJIMList(memCode);
		System.out.println(store);
		model.addAttribute("jjimList", jjimList);
		/* ==== 현재 페이지 처리 ==== */
		int pageNo = 1;
		
		System.out.println("currentPage : " + currentPage);
		
		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.parseInt(currentPage);
		}
		
		if(pageNo <= 0) {
			pageNo = 1;
		}
		
		/* ==== 검색 처리 ==== */
		String searchCondition = (String) model.getAttribute("searchCondition");
		String searchValue = (String) model.getAttribute("searchValue");
		
		Map<String, String> searchMap = new HashMap<>();
		searchMap.put("memCode", memCode);
		
		/* ==== 조건에 맞는 게시물 수 처리 ==== */
		int totalCount = userService.selectReviewTotalCount(searchMap);
		
		int limit = 10;
		int buttonAmount = 10;
		
		Pagination pagination = null;
		if(searchCondition == null || "".equals(searchCondition)) {
			searchCondition = memCode;
		}
		
		pagination = Pagination.getPagination(pageNo, totalCount, limit, buttonAmount, searchCondition, null);
		System.out.println(pagination);
		List<ReviewDTO> rvList = userService.selectReviewList(pagination);
		System.out.println("리스트 확인 : " + rvList);
		
		if(rvList != null) {
			model.addAttribute("pagination",pagination);
			model.addAttribute("rvList", rvList);
		} else {
			System.out.println("조회실패");
		}
		
		model.addAttribute("store", store);
		model.addAttribute("products", products);
		return "user/store_page";
	}
	
	/**@author ShinHyungi
	 * @param orderList
	 */
	@GetMapping("packagePay")
	public void packagePay(@RequestParam(value = "orderList", required = false) int orderList[]) {
		
	}
	
	/**@author ShinHyungi
	 * @param orderList
	 */
	@GetMapping("deliveryPay")
	public void deliveryPay(@RequestParam(value = "orderList", required = false) int orderList[]) {
		
	}
	
	/**@author ShinHyungi
	 * @param sdCode
	 * @param memCode
	 * @param model
	 */
	@GetMapping("sidedish_detail")
	public void orderProduct(@RequestParam("sdCode") int sdCode, @RequestParam("memCode") String memCode ,Model model) {
		
		ProductDTO product = userService.selectProductBySdCode(sdCode);
		Map<String, String> store = userService.selectStoreByMemCode(memCode);
		model.addAttribute("product", product);
		model.addAttribute("store", store);
	}
	
	/**@author ShinHyungi
	 * @param rvCode
	 * @param reportType
	 * @return
	 */
	@PostMapping(value = "report", produces = "text/plain; charset=UTF-8")
	@ResponseBody
	public String report(@RequestParam("rvCodee") int rvCode, @RequestParam("reportType") int reportType) {
		
		Map<String, Integer> reportInfo = new HashMap<String, Integer>();
		reportInfo.put("rvCode", rvCode);
		reportInfo.put("reportType", reportType);
		
		int result = userService.insertReport(reportInfo);
		
		return result > 0? "1" : "0";
	}
	
	/**@author ShinHyungi
	 * @param memCode
	 * @param model
	 * @return
	 */
	@GetMapping("storeInfo")
	public String storeInfo(@RequestParam("memCode") int memCode, Model model) {
		Map<String, String> store = userService.selectStoreInfoByMemcode(memCode);
		model.addAttribute("store", store);
		return "user/store_info";
	}
	
	/**@author ShinHyungi
	 * @param model
	 * @param searchValue
	 */
	@PostMapping("searchResult")
	public void search(Model model, @RequestParam(value = "searchValue") String searchValue) {
		
		List<String> list = new ArrayList<String>();
		Map<String, Object> searchMap = new HashMap<>();
		
		if(searchValue.contains(",")) {
			String[] words = searchValue.split(",");
			for(String a : words) {
				String word = a.replace("#", "");
				if(!word.equals("")) {
					list.add(word);
				}
			}
			searchMap.put("searchValue", list);
		} else {
			searchMap.put("searchValue", searchValue);
			searchMap.put("searchCondition", "title");
		}
		
		List<ProductDTO> productList = userService.selectSearchList(searchMap);
		System.out.println("리스트 확인 : " + productList);
		
		if(productList != null) {
			model.addAttribute("productList", productList);
		} else {
			System.out.println("조회실패");
		}
		
	}
	
	/**@author ShinHyungi
	 * 주문 시작할 때 생성된 주문 업데이트
	 * @return
	 */
	@GetMapping("payComplete")
	public String payComplete(@RequestParam("orderCode") int orderCode, @RequestParam("totalPrice") int totalPrice) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("orderCode",orderCode);
		map.put("totalPrice",totalPrice);
		
//		int result = userService.updateOrder(map);
		
		return "user/cart";
	}
	
	/**@author ShinHyungi
	 * @param storeCode
	 * @param memCode
	 * @return
	 */
	@PostMapping(value = "jjimplus", produces = "text/plain; charset=UTF-8;")
	@ResponseBody
	public String jjimplus(@RequestParam("storeCode") int storeCode, @RequestParam("memCode") int memCode) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("storeCode",storeCode);
		map.put("memCode",memCode);
		
		Integer result = userService.insertJJIMplus(map);
		
		return result > 0? "삭제 완료" : "삭제 실패";
	}
	
	/**@author ShinHyungi
	 * @param storeCode
	 * @param memCode
	 * @return
	 */
	@PostMapping(value = "jjimdelete", produces = "text/plain; charset=UTF-8;")
	@ResponseBody
	public String jjimdelete(@RequestParam("storeCode") int storeCode, @RequestParam("memCode") int memCode) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("storeCode",storeCode);
		map.put("memCode",memCode);
		
		Integer result = userService.deleteJJIMplus(map);
		
		return result > 0? "삭제 완료" : "삭제 실패";
	}
}
