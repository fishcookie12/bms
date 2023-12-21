package com.application.bms.order.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.application.bms.order.dao.OrderDAO;
import com.application.bms.order.dto.OrderDTO;

@Service
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderDAO orderDAO;

	@Override
	public void addOrder(OrderDTO orderDTO) throws Exception {
		orderDAO.insertOrder(orderDTO);
		
	}
}
