package com.sd.mommyson.user.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sd.mommyson.user.service.UserService;

@Controller
@RequestMapping("/user/*")
public class UserController {
	
	private UserService userService;
	
	@Autowired
	public UserController(UserService userService) {
		this.userService = userService;
	}
	
	@GetMapping(value = "MTMConsult")
	public String userCustomerServiceCenterMTMConsult() {
		
		return "user/userCustomerServiceCenterMTMConsult";
	}
	
	@GetMapping(value = "MTMQnA")
	public String userCustomerServiceCenterMTMQnA() {
		
		return "user/userCustomerServiceCenterMTMQnA";
	}
	@GetMapping("cart")
	public String cart() {
		return "user/shoppingBasket";
	}
	
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
			switch(category) {
				case "recommend" : cg = "오늘의 추천"; break;
				case "famous" : cg = "우리동네 인기 맛집"; break;
				case "sale" : cg = "오늘만 할인"; break;
			}
		}
		
		mv.addObject("category", cg);
		mv.setViewName("user/category_page");
		
		return mv;
	}
}
