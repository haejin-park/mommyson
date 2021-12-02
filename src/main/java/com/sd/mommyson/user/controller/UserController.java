package com.sd.mommyson.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/user/*")
public class UserController {

	@GetMapping("cart")
	public String cart() {
		return "user/shoppingBasket";
	}
	
	@GetMapping("category/{category}")
	public void categoryPage(ModelAndView model,@PathVariable String category) {
		model.addObject("category", category);
		model.setViewName("user/category_page");
	}
}
