package com.application.bms.cart.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.application.bms.cart.dto.CartDTO;
import com.application.bms.cart.service.CartService;

@Controller
@RequestMapping("/cart")
public class CartController {
	@Autowired
	private CartService cartService;
	
	@PostMapping("/addCart")
	@ResponseBody
	public String addCart(@ModelAttribute CartDTO cartDTO) throws Exception {
		cartService.addCart(cartDTO);
		
		return "success";
	}
	
	
	@GetMapping("/cartList")
	public ModelAndView cartList() throws Exception {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("cartList");
		mv.addObject("cartList", cartService.cartList());
		return mv;
	}

	
}
