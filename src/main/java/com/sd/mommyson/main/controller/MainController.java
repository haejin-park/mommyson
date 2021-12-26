package com.sd.mommyson.main.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.sd.mommyson.member.dto.StoreDTO;
import com.sd.mommyson.member.service.MemberService;
import com.sd.mommyson.owner.dto.ProductDTO;
import com.sd.mommyson.owner.dto.TagDTO;

@Controller
@RequestMapping("/*")
@SessionAttributes({"locationList","categoryList","tagList"})
public class MainController {
	
	private MemberService memberService;
	
	@Autowired
	public MainController(MemberService memberService) {
		this.memberService = memberService;
	}

	@GetMapping(value={"/","main"})
	public String main(Model model) {
		
		List<HashMap<String, String>> locationList = memberService.selectLoation();
		List<HashMap<String, String>> categoryList = memberService.selectCategoryList();
		List<TagDTO> tagList = memberService.selectTagList();
		List<ProductDTO> productList = memberService.selectProductList();
		List<TagDTO> hotKeywordList = memberService.selectHotKeywordList();
		List<StoreDTO> storeList = memberService.selectStoreList();
		System.out.println(categoryList);
		model.addAttribute("locationList", locationList);
		model.addAttribute("categoryList", categoryList);
		model.addAttribute("tagList", tagList);
		model.addAttribute("productList", productList);
		model.addAttribute("hotKeywordList", hotKeywordList);
		model.addAttribute("storeList", storeList);
		
		return "user/main";
	}
	
	
}
