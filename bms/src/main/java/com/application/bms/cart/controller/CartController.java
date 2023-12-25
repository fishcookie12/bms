package com.application.bms.cart.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public ResponseEntity<Object> addCart(@ModelAttribute CartDTO cartDTO) throws Exception {
		cartService.addCart(cartDTO);
		System.out.println(cartDTO);
		return new ResponseEntity<Object>(HttpStatus.OK);
	}
	
	
	@GetMapping("/cartList")
	public ModelAndView cartList(HttpServletRequest request) throws Exception {
		HttpSession session=request.getSession();
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/cart/cartList");
		mv.addObject("cartList", cartService.cartList((String)session.getAttribute("memberId")));
		return mv;
	}
	
	@PostMapping("/modifyCart")
	public ResponseEntity<Object> modifyCart(CartDTO cartDTO) throws Exception {
		System.out.println(cartDTO);
		cartService.modifyCart(cartDTO);
		return new ResponseEntity<Object>(HttpStatus.OK);
	}
	
	@PostMapping("/removeCart")
	public ResponseEntity<Object> removecart(int cartCd, HttpServletRequest request ) throws Exception{
		cartService.removeCart(cartCd);
		return new ResponseEntity<Object>(HttpStatus.OK);
	}
	
	@PostMapping("/clearCart")
	public ResponseEntity<Object> clearCart(String memberId, HttpServletRequest request) throws Exception{
		cartService.clearCart(memberId);
		return new ResponseEntity<Object>(HttpStatus.OK);
	}
}
