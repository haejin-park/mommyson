package com.sd.mommyson.owner.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

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

import com.sd.mommyson.member.dto.MemberDTO;
import com.sd.mommyson.owner.dto.CouponDTO;
import com.sd.mommyson.owner.service.OwnerService;

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
	@RequestMapping("coupon")
	public String coupon(@ModelAttribute("owner") MemberDTO member, Model model) {
		
		List<CouponDTO> coupon = ownerService.selectCoupon(member);
		System.out.println(coupon);
		
		//					items 이름 , 리스트이름
		model.addAttribute( "coupon" ,coupon);
		
		
		return "owner/coupon";
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
	public void review() {}
}
