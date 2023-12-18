package com.application.bms.order.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.application.bms.order.service.OrderService;

@Controller
public class OrderController {
	@Autowired
	private OrderService orderService;
}
