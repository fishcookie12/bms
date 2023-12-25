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
import org.springframework.web.bind.annotation.RequestParam;
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
	
	@GetMapping("/orderList")
	public ModelAndView orderList(OrderDTO orderDTO, HttpServletRequest request) throws Exception {
		HttpSession session=request.getSession();
		String memberId=(String) session.getAttribute("memberId");
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/order/orderList");
		mv.addObject("orderList",orderService.orderList(memberId));
		return mv;
	}
	
	@GetMapping("/orderDetail")
	public ModelAndView orderDetail(@RequestParam("orderCd")int orderCd) throws Exception {
		
		ModelAndView mv=new ModelAndView();
		
		mv.setViewName("/order/orderDetail");
		
		mv.addObject("orderDTO", orderService.orderDetail(orderCd));
		
		return mv;
	}
	
	@GetMapping("/modifyOrder")
	public ModelAndView modifyOrder(@RequestParam("orderCd")int orderCd) throws Exception {
		ModelAndView mv=new ModelAndView();
	
		mv.setViewName("/order/modifyOrder");
		mv.addObject("orderDTO", orderService.orderDetail(orderCd));
		
		System.out.println("orderCd : "+orderCd);
		return mv;
	}
	
	@PostMapping("/modifyOrder")
	@ResponseBody
	public String modifyOrder(OrderDTO orderDTO, HttpServletRequest request) throws Exception {
	
		String jsScript="";
		orderService.modifyOrder(orderDTO);
		jsScript+="<script>;";
		jsScript+="alert('Modification Complete');";
		jsScript += "location.href='" + request.getContextPath() + "/'";
		jsScript+="</script>;";
		return jsScript;
	}
	
	@GetMapping("/removeOrder")
	public ModelAndView removeOrder(@RequestParam("orderCd")int orderCd) throws Exception {
		ModelAndView mv=new ModelAndView();
	
		mv.setViewName("/order/removeOrder");
		mv.addObject("orderCd", orderCd);
		System.out.println("orderCd : "+orderCd);
		return mv;
	}
	
	@PostMapping("/removeOrder")
	@ResponseBody
	public String removeOrder(int orderCd, HttpServletRequest request) throws Exception {
		System.out.println("orderCd : "+orderCd);
		
		String jsScript="";
		orderService.removeOrder(orderCd);
		System.out.println("1");
		jsScript+="<script>;";
		jsScript+="alert('Order cancellation complete');";
		jsScript += "location.href='" + request.getContextPath() + "/'";
		jsScript+="</script>;";
		return jsScript;
	}
	
	@GetMapping("/adminOrderList")
	public ModelAndView adminOrderList() throws Exception {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/order/adminOrderList");
		mv.addObject("orderList", orderService.adminOrderList());
		return mv;
	}
	
	@GetMapping("/adminOrderDetail")
	public ModelAndView adminOrderDetail(@RequestParam("orderCd")int orderCd) throws Exception {
		
		ModelAndView mv=new ModelAndView();
		
		mv.setViewName("/order/adminOrderDetail");
		
		mv.addObject("orderDTO", orderService.orderDetail(orderCd));
		
		return mv;
	}
	
	@GetMapping("/adminModifyOrder")
	public ModelAndView adminModifyOrder(@RequestParam("orderCd")int orderCd) throws Exception {
		ModelAndView mv=new ModelAndView();
	
		mv.setViewName("/order/adminModifyOrder");
		mv.addObject("orderDTO", orderService.orderDetail(orderCd));
		
		System.out.println("orderCd : "+orderCd);
		return mv;
	}
	
	@PostMapping("/adminModifyOrder")
	@ResponseBody
	public String adminModifyOrder(OrderDTO orderDTO, HttpServletRequest request) throws Exception {
	
		String jsScript="";
		orderService.modifyOrder(orderDTO);
		jsScript+="<script>;";
		jsScript+="alert('Modification Complete');";
		jsScript += "location.href='" + request.getContextPath() + "/'";
		jsScript+="</script>;";
		return jsScript;
	}
	
}
