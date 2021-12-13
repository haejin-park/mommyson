package com.sd.mommyson.usermypage.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.sd.mommyson.member.dto.MemberDTO;
import com.sd.mommyson.member.dto.StoreDTO;
import com.sd.mommyson.user.common.Pagenation;
import com.sd.mommyson.user.common.SelectCriteria;
import com.sd.mommyson.user.dto.OrderDTO;
import com.sd.mommyson.usermypage.dto.CouponDTO;
import com.sd.mommyson.usermypage.dto.MyOrderDTO;
import com.sd.mommyson.usermypage.service.UserMyPageService;

@Controller
@RequestMapping("/userMyPage/*")
public class UserMyPageController {
//양윤제
	
	private UserMyPageService userMyPageService;
	
	@Autowired
	public UserMyPageController(UserMyPageService userMyPageService) {
		this.userMyPageService = userMyPageService;
	}
	
	/*주문내역*/
	@GetMapping(value={"myOrderList","/"})
	public String myOrderList(HttpSession session, Model model, @RequestParam(required = false) Map<String,String> parameters) {
		
		MemberDTO memberInfo = (MemberDTO) session.getAttribute("loginMember");
		System.out.println("로그인 멤버: " + memberInfo);
		System.out.println("로그인한 멤버의 멤버 코드: " + memberInfo.getMemCode());
		int userCode = memberInfo.getMemCode();

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
		//searchCondition에 유저 코드를 넣어줌
		String searchCondition = "" + userCode;
		String searchValue = parameters.get("searchValue");
		
		System.out.println("searchCondition : " + searchCondition);
		System.out.println("searchValue : " + searchValue);
		System.out.println("pageNo : " + pageNo);
		
		Map<String, String> searchMap = new HashMap<>();
		searchMap.put("searchCondition", searchCondition);
		searchMap.put("searchValue", searchValue);
		System.out.println("searchMap : " + searchMap);
		
		//내가 주문한 내역의 총 숫자, 검색어로 주문가게 찾을수있음
		int totalCount = userMyPageService.selectMyOrderNum(searchMap);
		

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
		
		List<MyOrderDTO> myOrderList = userMyPageService.selectMyOrderList(selectCriteria);
		
		//반찬코드를 담는다.
		List<Object> sdCode = new ArrayList<>();
		
		for(int i =0; i < myOrderList.size(); i++) {
			for(int j =0; j< myOrderList.get(i).getOrderInfo().size(); j++) {
				sdCode.add(myOrderList.get(i).getOrderInfo().get(j).getSdCode());
				
			}
		}
		System.out.println(sdCode);
//		List<Object> orderInfo = new ArrayList<>();
//		for(int i = 0 ; i < myOrderList.size(); i++) {
//			orderInfo.add(myOrderList.get(i).getOrderInfo());
//		}
//		System.out.println(orderInfo);
//		
//		List<Object> sideCode = new ArrayList<>;
//		for(int i = 0 ; i < myOrderList.size(); i++) {
//			sideCode.add(orderInfo);
//		}
		
		//내 주문내역에 필요한 추가 정보를 담아온다. 
		List<Object> sdInfo = new ArrayList<>();
		
		
		
		
		
		
		
		
		
		
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
	public String userCoupon(HttpSession session, Model mv, @RequestParam(required = false) Map<String,String> parameters) {
		
		System.out.println("내가 쓴 리뷰 콘트롤러 진입");
		
		MemberDTO memberInfo = (MemberDTO) session.getAttribute("loginMember");
		System.out.println("로그인 멤버: " + memberInfo);
		System.out.println("로그인한 멤버의 멤버 코드: " + memberInfo.getMemCode());
		int userCode = memberInfo.getMemCode();
		
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
		//searchCondition에 유저 코드를 넣어줌
		String searchCondition = "" + userCode;
		String searchValue = parameters.get("searchValue");
		
		System.out.println("searchCondition : " + searchCondition);
		System.out.println("searchValue : " + searchValue);
		System.out.println("pageNo : " + pageNo);
		
		Map<String, String> searchMap = new HashMap<>();
		searchMap.put("searchCondition", searchCondition);
		searchMap.put("searchValue", searchValue);
		System.out.println("searchMap : " + searchMap);
		
		int totalCount = userMyPageService.selectMycouponNo(searchMap);
		
		System.out.println("totalPostCount : " + totalCount);
		
		/* 한 페이지에 보여 줄 게시물 수 */
		int limit = 5;		//얘도 파라미터로 전달받아도 된다.
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
		
		List<CouponDTO> myCouponList = userMyPageService.selectMyCouponList(selectCriteria);
		
		System.out.println("나의 쿠폰 : " + myCouponList);
		
		mv.addAttribute("myCouponList", myCouponList);
		mv.addAttribute("selectCriteria", selectCriteria);
		mv.addAttribute("Paging", "uer_coupon_warehouse");//페이지네이션 해당값
		
		
		return "user_mypage/userCoupon";
	}
	
	/*내가 쓴 리뷰*/
	@GetMapping("userReview")
	public String userReview(HttpSession session, Model model, @RequestParam(required = false) Map<String,String> parameters) {
		
		
		
		return "user_mypage/userReview";
	}
	
	/*자주찾는가게*/
	@GetMapping("userRecommendStore")
	public String userRecommendStore(HttpSession session, Model mv, @RequestParam(required = false) Map<String,String> parameters) {
		
		System.out.println("내가 찜한가게 콘트롤러 진입");
		
		MemberDTO memberInfo = (MemberDTO) session.getAttribute("loginMember");
		System.out.println("로그인 멤버: " + memberInfo);
		System.out.println("로그인한 멤버의 멤버 코드: " + memberInfo.getMemCode());
		int userCode = memberInfo.getMemCode();
		
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
		//searchCondition에 유저 코드를 넣어줌
		String searchCondition = "" + userCode;
		String searchValue = parameters.get("searchValue");
		
		System.out.println("searchCondition : " + searchCondition);
		System.out.println("searchValue : " + searchValue);
		System.out.println("pageNo : " + pageNo);
		
		Map<String, String> searchMap = new HashMap<>();
		searchMap.put("searchCondition", searchCondition);
		searchMap.put("searchValue", searchValue);
		System.out.println("searchMap : " + searchMap);
		
		int totalCount = userMyPageService.selectMyRecommendStore(searchMap);
		
		System.out.println("totalPostCount : " + totalCount);
		
		/* 한 페이지에 보여 줄 게시물 수 */
		int limit = 5;		//얘도 파라미터로 전달받아도 된다.
		/* 한 번에 보여질 페이징 버튼의 갯수 */
		int buttonAmount = 5;
		
		/* 페이징 처리를 위한 로직 호출 후 페이징 처리에 관한 정보를 담고 있는 인스턴스를 반환받는다. */
		SelectCriteria selectCriteria = null;
		
		if(searchCondition != null && !"".equals(searchCondition)) {
			selectCriteria = Pagenation.getSelectCriteria(pageNo, totalCount, limit, buttonAmount, searchCondition, searchValue);
			System.out.println("들어왔음");
		} else {
			selectCriteria = Pagenation.getSelectCriteria(pageNo, totalCount, limit, buttonAmount);
		}
		
		System.out.println("selectCriteria : " + selectCriteria);
		
		List<StoreDTO> storeReconmendList = userMyPageService.selectRecommendStore(selectCriteria);
		
		System.out.println("내가찜한 가게 " + storeReconmendList);
		
		mv.addAttribute("storeReconmendList", storeReconmendList);
		mv.addAttribute("selectCriteria", selectCriteria);
		mv.addAttribute("totalCount", totalCount);
		mv.addAttribute("Paging", "recommendStore");
		
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
