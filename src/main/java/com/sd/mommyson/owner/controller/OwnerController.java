package com.sd.mommyson.owner.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	@GetMapping("ownerMain")
	public String ownerMypage(@ModelAttribute("loginMember") MemberDTO member, Model model) {
		
		MemberDTO owner = ownerService.selectOwner(member);
		
		System.out.println(owner);

		model.addAttribute("owner", owner);
		
		return "owner/ownerMain";
	}
	
	/* 쿠폰 발행 */
	@GetMapping("coupon")
	public String coupon(@ModelAttribute("loginMember") MemberDTO member, Model model) {
		
		List<CouponDTO> coupon = ownerService.selectCoupon(member);
		System.out.println(coupon);
		
		//					items 이름 , 리스트이름
		model.addAttribute( "coupon" ,coupon);
		
		
		return "owner/coupon";
	}
	
	@PostMapping("coupon") 	  // couponDTO를 선언하면 자동으로 값이 담겨져 // memCode를 가져오려면 세션이 필요
	public String couponInsert(@ModelAttribute CouponDTO coupon, RedirectAttributes ra, HttpSession session,  HttpServletRequest request) {
															  // 리다이렉트를 해줄때 값을 넘겨주는...........
		// @ModelAttribute 을 사용하는 순간 DTO에 필드값이랑 name값이 같으면 자동으로 값을 DTO에 담아서 보낸다. 
		
		System.out.println("결과를 말하라" + coupon);
		
		// root-contect에서 insert는 regist로 시작으로 지정해놓았다
		int result = ownerService.registCoupon(coupon);
		
		//세션에서 memCode를 담아서 넘겨준다.
		MemberDTO member = (MemberDTO)session.getAttribute("loginMember");
		int memCode = member.getMemCode();
		
		int result2 = ownerService.registCouponStore(memCode);
		
		if(result > 0 && result2 > 0) {
			ra.addFlashAttribute("message","쿠폰 등록에 성공하였습니다.");
		} else {
			ra.addFlashAttribute("message","쿠폰 등록에 실패하였습니다.");
		}
		
		
		return "redirect:coupon"; // getMapping으로 보내준다
	}
	
	/* 가게정보 수정 */
	@GetMapping("modifyStore")
	public void modifyStore(){}
	
	@PostMapping("modifyStore")
	public String updateModifytStore(@RequestParam MultipartFile img, HttpServletRequest request,  Model model) {
		
		System.out.println("img : " + img);
		
		String storeName = request.getParameter("storeName");
		String address = request.getParameter("address");
		String dAddress = request.getParameter("dAddress");
		String postCode = request.getParameter("postCode");
		String workTime = request.getParameter("workTime");
		String phone = request.getParameter("phone");
		String name = request.getParameter("name");
		String storeInfo = request.getParameter("storeInfo");
		String memCode = request.getParameter("memCode");
		
		Map<String, String> modifyInfo = new HashMap<>();
		modifyInfo.put("storeName", storeName);
		modifyInfo.put("address", address);
		modifyInfo.put("dAddress", dAddress);
		modifyInfo.put("postCode", postCode);
		modifyInfo.put("workTime", workTime);
		modifyInfo.put("phone", phone);
		modifyInfo.put("name", name);
		modifyInfo.put("storeInfo", storeInfo);
		modifyInfo.put("memCode",memCode);
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		String filePath = root + "/uploadFiles";
		
		File mkdir = new File(filePath);
		if(!mkdir.exists()) {
			mkdir.mkdirs();
		}
		
		String orginFileName = img.getOriginalFilename();
		String ext = orginFileName.substring(orginFileName.indexOf("."));
		String savedName = UUID.randomUUID().toString().replace("-", "") + ext;
		
		try {
			img.transferTo(new File(filePath + "/" + savedName));
			
			String fileName = "../resources/uploadFiles/" + savedName;
			
			modifyInfo.put("fileName", fileName);
			
			int modifyOwner = ownerService.modifyInfo(modifyInfo);
			int modifyCeo = ownerService.modifyCeo(modifyInfo);
			int modifyStore = ownerService.modifyStore(modifyInfo);
			
			System.out.println("savedName : " + savedName);
			System.out.println("map : " + modifyInfo);
			
			if(modifyOwner > 0 && modifyCeo > 0 && modifyStore > 0) {
				
				model.addAttribute("message","변경이 완료되었습니다.");
			}
			
		} catch (IllegalStateException | IOException e) {
			new File(filePath + "/" + savedName).delete();
			model.addAttribute("message","변경에 실패하였습니다.");
			e.printStackTrace();
		}
		
		return "redirect:ownerMain";
	}
	
	/* 비밀번호 변경 */
	@GetMapping("modifyOwnerInfo")
	public void modifyOwnerInfo() {}
	
	
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
