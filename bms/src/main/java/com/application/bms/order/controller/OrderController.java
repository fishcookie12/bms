package com.application.bms.order.controller;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.application.bms.cart.dto.CartDTO;
import com.application.bms.cart.service.CartService;
import com.application.bms.order.dto.OrderDTO;
import com.application.bms.order.service.OrderService;

@Controller
@RequestMapping("/order")
public class OrderController {
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private CartService cartService;
	
	@GetMapping("/addOrder")
	public ModelAndView addOrder(Model model,HttpServletRequest request) throws Exception {
		ModelAndView mv=new ModelAndView();
		HttpSession session=request.getSession();
		String memberId=(String)session.getAttribute("memberId");
		
		mv.setViewName("/order/addOrder");
		mv.addObject("cartList", cartService.cartList(memberId));
		return mv;
	}
	
	@PostMapping("/addOrder")
	@ResponseBody
	public String addOrder(OrderDTO orderDTO, HttpServletRequest request) throws Exception {
		String jsScript="";
		HttpSession session=request.getSession();
		String memberId=(String) session.getAttribute("memberId");
		orderService.addOrder(orderDTO);
		jsScript+="<script>";
		jsScript+="alert('Order Completed');";
		jsScript+="location.href='"+request.getContextPath()+"/';";
		jsScript+="</script>";
		System.out.println(orderDTO);
		return jsScript;
	}
}
