package com.application.bms.order.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import com.application.bms.order.dto.OrderDTO;
import com.application.bms.order.service.OrderService;

@Controller
@RequestMapping("/order")
public class OrderController {
	@Autowired
	private OrderService orderService;
	
	@PostMapping("/addOrder")
	public ResponseEntity<Object> addCart(@ModelAttribute OrderDTO orderDTO) throws Exception {
		orderService.addOrder(orderDTO);
		return new ResponseEntity<Object>(HttpStatus.OK);
	}
}
