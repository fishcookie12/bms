package com.application.bms.order.service;

import java.util.List;
import java.util.Map;

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

	@Override
	public List<Map<String, Object>> orderList(String memberId) throws Exception {
		
		return orderDAO.selectOrderList(memberId);
	}
}
