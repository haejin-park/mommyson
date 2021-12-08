package com.sd.mommyson.owner.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sd.mommyson.member.dto.MemberDTO;
import com.sd.mommyson.member.service.MemberService;
import com.sd.mommyson.owner.dto.CouponDTO;
import com.sd.mommyson.owner.dto.ProductDTO;
import com.sd.mommyson.owner.dto.TagDTO;
import com.sd.mommyson.owner.service.OwnerService;
import com.sd.mommyson.user.dto.ReviewDTO;

@Controller
@RequestMapping("/owner/*")
@SessionAttributes({"loginMember","owner"})
public class OwnerController {
	
	private OwnerService ownerService;
	private BCryptPasswordEncoder passwordEncoder;
	private MemberService memberService;
	
	@Autowired
	public OwnerController(OwnerService ownerService, MemberService memberService , BCryptPasswordEncoder passwordEncoder) {
		
		this.ownerService = ownerService;
		this.memberService = memberService;
		this.passwordEncoder = passwordEncoder;
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
		
		MemberDTO owner = ownerService.selectOwner(member);
		System.out.println(owner);
		
		//					items 이름 , 리스트이름
		model.addAttribute( "coupon" ,coupon);
		model.addAttribute("owner", owner);
	
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
	public String updateModifytStore(@RequestParam MultipartFile img, HttpSession session, HttpServletRequest request, RedirectAttributes ra) {
		
		System.out.println("img : " + img);
		
		String storeName = request.getParameter("storeName");
		String address = request.getParameter("address");
		String dAddress = request.getParameter("dAddress");
		String postCode = request.getParameter("postCode");
		String workTime = request.getParameter("workTime");
		String phone = request.getParameter("phone");
		String name = request.getParameter("name");
		String storeInfo = request.getParameter("storeInfo");
		String no = request.getParameter("no");
		
		
		MemberDTO member = (MemberDTO)session.getAttribute("owner");
		System.out.println(member);
		
		
		Map<String, Object> modifyInfo = new HashMap<>();
		modifyInfo.put("storeName", storeName);
		modifyInfo.put("address", address);
		modifyInfo.put("dAddress", dAddress);
		modifyInfo.put("postCode", postCode);
		modifyInfo.put("workTime", workTime);
		modifyInfo.put("phone", phone);
		modifyInfo.put("name", name);
		modifyInfo.put("storeInfo", storeInfo);
		modifyInfo.put("no",no);
		modifyInfo.put("member", member);
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		String filePath = root + "/uploadFiles";
		
		File mkdir = new File(filePath);
		if(!mkdir.exists()) {
			mkdir.mkdirs();
		}
		
		if(!img.isEmpty()) {
		
			String orginFileName = img.getOriginalFilename();
			String ext = orginFileName.substring(orginFileName.indexOf("."));
			String savedName = UUID.randomUUID().toString().replace("-", "") + ext;
			
			try {
				img.transferTo(new File(filePath + "/" + savedName));
				
				String fileName = "../resources/uploadFiles/" + savedName;
				
				modifyInfo.put("fileName", fileName);
				
				
			} catch (IllegalStateException | IOException e) {
				new File(filePath + "/" + savedName).delete();
					
				e.printStackTrace();
			}
		
		}
		
		int modifyOwner = ownerService.modifyInfo(modifyInfo);
		int modifyCeo = ownerService.modifyCeo(modifyInfo);
		int modifyStore = ownerService.modifyStore(modifyInfo);
		
		System.out.println("modifyOwner : " + modifyOwner);
		System.out.println("modifyCeo : " + modifyCeo);
		System.out.println("modifyStore : " + modifyStore);
		
		if(modifyOwner > 0 && modifyCeo > 0 && modifyStore > 0) {
			ra.addFlashAttribute("message","변경이 완료되었습니다.");
		} else {
			ra.addFlashAttribute("message","변경에 실패하였습니다.");
		}
		
		return "redirect:ownerMain";
	}
	
	/* 비밀번호 변경 */
	@GetMapping("modifyOwnerInfo")
	public void modifyOwnerInfo() {}
	
	@PostMapping("modifyOwnerInfo")
	public ModelAndView modifyOwnerPwd(@RequestParam Map<String, String> info, ModelAndView mv, RedirectAttributes ra,SessionStatus status) {
		
		MemberDTO member = new MemberDTO();
		
		member.setMemPwd(passwordEncoder.encode(info.get("pwd")));
		member.setMemCode(Integer.parseInt(info.get("memCode")));
		
		int modifyPwd = ownerService.modifyPwd(member);
		
		if(modifyPwd > 0) {
			ra.addFlashAttribute("message","비밀번호가 변경되었습니다.");
			status.setComplete();
			mv.setViewName("redirect:/");
		} else {
			mv.addObject("message", "비밀번호 변경에 실패하였습니다.");
			mv.setViewName("modifyOwnerInfo");
		}
		
		return mv;
		
	}
	
	
	/* 상품등록 */
	@GetMapping("productRegist") 
	public void productRegist(Model model){
		
		List<TagDTO> tagList = ownerService.selectTag();
		List<HashMap<String, String>> categoryList = memberService.selectCategoryList();
		
		for(int i = 0; i < categoryList.size(); i++) {
			
			System.out.println("키 좀 알려줘 이지삭아 : " + categoryList.get(i).keySet());
			
		}

		model.addAttribute("tagList",tagList);
		model.addAttribute("categoryList",categoryList);
	}
	
	@PostMapping("productRegist")
	public String registProduct(@RequestParam MultipartFile productImg, HttpSession session, @ModelAttribute ProductDTO product, 
			HttpServletRequest request, RedirectAttributes rd) {
		
		int tag = Integer.parseInt(request.getParameter("tag1"));
		int tag2 = Integer.parseInt(request.getParameter("tag2"));
		int tag3 = Integer.parseInt(request.getParameter("tag3"));
		
		List<Integer> tagList = new ArrayList<Integer>();
		tagList.add(tag);
		tagList.add(tag2);
		tagList.add(tag3);
		
		MemberDTO member = (MemberDTO)session.getAttribute("loginMember");
		int memCode = member.getMemCode();
		
		Map<String,Object> productInfo = new HashMap<String, Object>();
		productInfo.put("product",product);
		productInfo.put("tagList", tagList);
		productInfo.put("memCode", memCode);
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		String filePath = root + "/uploadFiles";
		
		File mkdir = new File(filePath);
		if(!mkdir.exists()) {
			mkdir.mkdirs();
		}
		
		if(!productImg.isEmpty()) {
		
			String orginFileName = productImg.getOriginalFilename();
			String ext = orginFileName.substring(orginFileName.indexOf("."));
			String savedName = UUID.randomUUID().toString().replace("-", "") + ext;
			
			try {
				productImg.transferTo(new File(filePath + "/" + savedName));
				
				String fileName = "../resources/uploadFiles/" + savedName;
				
				productInfo.put("fileName", fileName);
				
				
			} catch (IllegalStateException | IOException e) {
				new File(filePath + "/" + savedName).delete();
					
				e.printStackTrace();
			}
		
		}
		
		int result = ownerService.registProduct(productInfo);
		
		if(result > 0) {
			rd.addFlashAttribute("message","상품이 등록되었습니다.");
		} else {
			rd.addFlashAttribute("message","상품 등록에 실패하였습니다.");
		}
		
		
		return "redirect:productManagement";
	}
	
	/* 리뷰 관리 */
	@GetMapping("review")
	public String selectReview(@ModelAttribute("loginMember") MemberDTO member, Model model) {
		
		// MemberDTO 안에 CeoDTo 안에 StoreDTO 안에 storeName 이 존재하니 뽑아서 넘겨준다.
		MemberDTO owner = ownerService.selectOwner(member);
		String storeName = owner.getCeo().getStore().getStoreName();
		System.out.println(storeName);
		
		List<ReviewDTO> reviews = ownerService.selectReview(storeName);
		System.out.println(reviews);	
		
		model.addAttribute("owner", owner);
		model.addAttribute("reviews",reviews);
		
		
		// 쿠폰 모달 리스트 가져오기
		List<CouponDTO> coupon = ownerService.selectCoupon(member);
		System.out.println(coupon);
		
		model.addAttribute("coupon",coupon);
		
		return "owner/review";	
		
	}
	/* 리뷰관리 - 리뷰쓴 고객들에게 쿠폰주기 인서트 (CP_HISTORY_TBL) */
	@PostMapping("review")
	public String registGiveCoupon(@ModelAttribute("loginMember") MemberDTO member, Model model) {
		
		return "owner/review";	
		
	}
	
	
	
	
	/* 판매상품 관리 */
	@GetMapping("productManagement")
	public void productManagement(Model model, HttpSession session) {
		
		MemberDTO member = (MemberDTO)session.getAttribute("loginMember");
		
		int memCode = member.getMemCode();
		
		List<ProductDTO> productList = ownerService.selectProduct(memCode);
		
		model.addAttribute("productList",productList);
		
	}
	
	

	
	
	
	
	
	
}
