package com.sd.mommyson.user.controller;

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
	public ModelAndView categoryPage(ModelAndView mv,@PathVariable String category) {
		mv.addObject("category", category);
		mv.setViewName("user/category_page");
		
		return mv;
	}
}
