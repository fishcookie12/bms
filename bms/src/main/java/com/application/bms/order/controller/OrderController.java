package com.application.bms.order.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
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
import com.application.bms.order.dto.OrderDTO2;
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
		return mv;
	}
	
	@PostMapping("/addOrder")
	@ResponseBody
	public String addOrder(OrderDTO orderDTO, HttpServletRequest request) throws Exception {
		String jsScript="";
		HttpSession session = request.getSession();
		String memberId = (String) session.getAttribute("memberId");
		orderService.addOrder(orderDTO);
		jsScript+="<script>";
		jsScript+="alert('Order Completed');";
		jsScript += "location.href='" + request.getContextPath() + "/order/orderList'";
		jsScript+="</script>";
		return jsScript;
	}
	@GetMapping("/addCartOrder")
	public ModelAndView addCartOrder(Model model,HttpServletRequest request) throws Exception {
		ModelAndView mv=new ModelAndView();
		HttpSession session=request.getSession();
		String memberId=(String)session.getAttribute("memberId");
		
		mv.setViewName("/order/addCartOrder");
		mv.addObject("cartList", cartService.cartList(memberId));
		return mv;
	}

	
	@PostMapping("/addCartOrder")
	@ResponseBody public String addCartOrder(OrderDTO2 orderDTO2, HttpServletRequest request) throws Exception 
	  {
		  String jsScript=""; HttpSession session = request.getSession(); 
		  String memberId = (String) session.getAttribute("memberId");
		  orderService.addOrder(orderDTO2); 
		  jsScript+="<script>";
		  jsScript+="alert('Order Completed');";
		  jsScript += "location.href='" + request.getContextPath() + "/order/orderList'";
		  jsScript+="</script>"; 

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
		
		return mv;
	}
	
	@PostMapping("/modifyOrder")
	@ResponseBody
	public String modifyOrder(OrderDTO orderDTO, HttpServletRequest request) throws Exception {
	
		String jsScript="";
		orderService.modifyOrder(orderDTO);
		jsScript+="<script>;";
		jsScript+="alert('Modification Complete');";
		 jsScript += "location.href='" + request.getContextPath() + "/order/orderDetail?orderCd=" + orderDTO.getOrderCd() + "';";
		 
		jsScript+="</script>;";
		return jsScript;
	}
	
	@GetMapping("/removeOrder")
	public ModelAndView removeOrder(@RequestParam("orderCd")int orderCd) throws Exception {
		ModelAndView mv=new ModelAndView();
	
		mv.setViewName("/order/removeOrder");
		mv.addObject("orderCd", orderCd);
		
		return mv;
	}
	
	@PostMapping("/removeOrder")
	@ResponseBody
	public String removeOrder(int orderCd, HttpServletRequest request) throws Exception {
		
		
		String jsScript="";
		orderService.removeOrder(orderCd);
		System.out.println("1");
		jsScript+="<script>;";
		jsScript+="alert('Order cancellation complete');";
		jsScript += "location.href='" + request.getContextPath() + "/order/orderList'";
		jsScript+="</script>;";
		return jsScript;
	}
	
	@GetMapping("/adminOrderList")
	public ModelAndView adminOrderList(HttpServletRequest request) throws Exception {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/order/adminOrderList");
		String searchCategory = request.getParameter("searchCategory");
		if (searchCategory == null) searchCategory = "total";
		
		String searchContent = request.getParameter("searchContent");
		if (searchContent == null) searchContent = "";
		
		
		mv.addObject("searchCategory"     , searchCategory);
		mv.addObject("searchContent"        , searchContent);
		
		Map<String, Object> searchMap= new HashMap<String, Object>();
		
		searchMap.put("searchCategory"  , searchCategory);
		searchMap.put("searchContent"     , searchContent);
		mv.addObject("orderList", orderService.adminOrderList(searchMap));
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
	
		return mv;
	}
	
	@PostMapping("/adminModifyOrder")
	@ResponseBody
	public String adminModifyOrder(OrderDTO orderDTO, HttpServletRequest request) throws Exception {
	
		String jsScript="";
		orderService.modifyOrder(orderDTO);
		jsScript+="<script>;";
		jsScript+="alert('Modification Complete');";
		jsScript += "location.href='" + request.getContextPath() + "/order/adminOrderList'";
		jsScript+="</script>;";
		return jsScript;
	}
	
	@GetMapping("/salseInquiry")
	public ModelAndView salseInquiry() throws Exception {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/order/salseInquiry");
		mv.addObject("totalSales", orderService.totalSales());
		mv.addObject("bestSellers", orderService.bestSaller());
		mv.addObject("totalWomanSales", orderService.totalWomanSales());
		mv.addObject("womanBestSellers", orderService.womanBestSaller());
		mv.addObject("totalManSales", orderService.totalManSales());
		mv.addObject("manBestSellers", orderService.manBestSaller());
		return mv;
	}
	
}
