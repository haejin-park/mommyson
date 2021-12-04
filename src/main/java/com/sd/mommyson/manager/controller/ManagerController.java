package com.sd.mommyson.manager.controller;

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
	public String deleteManager(@PathVariable("cks") String[] arr) {
		
		return "redirect:/manager/mamageManager";
	}
	
	/* 관리자 정산 */
	@GetMapping("taxAdjustment")
	public void taxAdjustment() {}
	
	/* 중개이용료 리스트 */
	@GetMapping("taxDetailAdjustment")
	public void taxDetailAdjustment() {}
}
