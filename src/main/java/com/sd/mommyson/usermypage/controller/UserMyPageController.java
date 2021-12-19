package com.sd.mommyson.usermypage.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
import com.sd.mommyson.user.dto.ReviewDTO;
import com.sd.mommyson.usermypage.dto.CouponDTO;
import com.sd.mommyson.usermypage.dto.MyOrderDTO;
import com.sd.mommyson.usermypage.dto.OrderInfoDTO;
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
	public String myOrderList(HttpSession session, Model mv, @RequestParam(required = false) Map<String,String> parameters) {
		
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
		

		System.out.println("totalCount : " + totalCount);
		
		/* 한 페이지에 보여 줄 게시물 수 */
		int limit = 4;		//얘도 파라미터로 전달받아도 된다.
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
		
		System.out.println("주문내역 리스트 : " +myOrderList);
		
		//반찬 정보 가져오기 
		List<HashMap<String, String>> mySdInfo = userMyPageService.selectMyOrderSd(userCode);
		System.out.println(mySdInfo);
		
			
		mv.addAttribute("myOrderList", myOrderList);
		mv.addAttribute("selectCriteria", selectCriteria);
		mv.addAttribute("mySdInfo", mySdInfo);
		mv.addAttribute("Paging", "myOrderBoard");
		
		return "user_mypage/userTotalOrderList";
	}
	
	/*주문취소*/
	@PostMapping("orderCancel")
	public void orderCancel(HttpSession session, HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String cancelInfo = request.getParameter("result");
		System.out.println("취소정보 : " + cancelInfo);
		
		String[] arrInfo = cancelInfo.split(" ");
		int result=0;
		for(int i = 0; i < arrInfo.length; i ++) {
			
			System.out.println("배열화된 주문번호 정보 : " + arrInfo[i]);
			
			 result += userMyPageService.updateOrderCancel(Integer.parseInt(arrInfo[i]));
			
		}
		
			response.setContentType("text/plain; charset=UTF-8");
			PrintWriter out = response.getWriter();
			if(result >= arrInfo.length ) {
				String message = "주문이 취소되었습니다.";
				out.print(message);
			} else {
				String message = "관리자에게 문의 바랍니다.";
				out.print(message);
			}
			
			out.flush();
			out.close();
		
		
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
		
		System.out.println("내가 쓴 쿠폰함 콘트롤러 진입");
		
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
	/* 자주찾는 가게 삭제 */
	@PostMapping("delRecommend")
	public void delRecommendStore(HttpSession session, @RequestParam("storeCode") String str, HttpServletResponse response) throws IOException {
		
		
		System.out.println("str :" + str);
		int storeNo = Integer.parseInt(str);
		
		int result = userMyPageService.deleteRecommendStore(storeNo);
		response.setContentType("text/plain; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		if( result > 0 ) {
			out.print("삭제 되었습니다.");
		} else {
			out.print("삭제에 실패했습니다.");
		}
		
		out.flush();
		out.close();
		
	}
	
	/*나의 신고 내역*/
	@GetMapping("userReport")
	public String userReport( ) {
		
		
		return "user_mypage/userReport";
	}
	
	/*내가 쓴 리뷰*/
	@GetMapping("userReview")
	public String userReview(HttpSession session, HttpServletRequest request, HttpServletResponse response, Model model, @RequestParam(required = false) Map<String,String> parameters) throws IOException {
		
		System.out.println("내가 리뷰 콘트롤러 진입");
		
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
		
		int totalCount = userMyPageService.selectTotalReviewCount(searchMap);
		System.out.println("totalCount : " + totalCount);

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
		
		List<ReviewDTO> reviewContentList = userMyPageService.selectReviewContentList(selectCriteria);
		System.out.println("리뷰 페이지네이션 및 검색 : " + reviewContentList);
		
//		int productInfoCode;
////		List<OrderInfoDTO>	productInfo = new ArrayList<>();
		List<HashMap<String, String>>productInfo = userMyPageService.selectMySdInfo(userCode);
//		System.out.println(productInfo);
//		for(int i = 0; i < reviewContentList.size(); i++) {
//			productInfoCode = reviewContentList.get(i).getOrderCode();
//				System.out.println(productInfoCode);
//				productInfo=userMyPageService.selectMySdInfo(productInfoCode);
//				System.out.println(productInfo);
//		}
//		System.out.println("반찬 정보 : " + productInfo);
//		List<Integer> sdCodeList = new ArrayList<>();
//		for(int i = 0; i < reviewContentList.size(); i++) {
//			productOrderCode = reviewContentList.get(i).getOrderCode();
//			sdCodeList.add(userMyPageService.selectMySdInfo(productOrderCode));
//			
//		}
		
		
		
	
		
//		System.out.println(request.getParameter("orderNo"));
//		String productNo = request.getParameter("orderNo");
//		System.out.println(productNo);
//		
//		String num = request.getParameter("orderNo");
//		System.out.println("Num값을 찾아라  : " + num);
//		int productInfoCode = Integer.parseInt(num);
		
		
		
//		List<OrderInfoDTO>	productInfo = userMyPageService.selectMySdInfo(productInfoCode);	
//		System.out.println(request.getParameter("orderNo"));
//		response.setContentType("text/plain; charset=UTF-8");
//		PrintWriter out = response.getWriter();
//		out.print(Num);
//		
//		out.flush();
//		out.close();
		
		
		
		
//		System.out.println("넘어온 주문번호" + orderNo);
		
		model.addAttribute("selectCriteria", selectCriteria);
		model.addAttribute("reviewContentList", reviewContentList);
		model.addAttribute("productInfo", productInfo);
		
		model.addAttribute("Paging", "myReview");
		
		
		return "user_mypage/userReview";
	}

	/*리뷰 수정*/
	/*리뷰 삭제*/
	@PostMapping("delReview")
	public int deleteReview() {
		
		return 0;
	}
	
	
	
	
}
