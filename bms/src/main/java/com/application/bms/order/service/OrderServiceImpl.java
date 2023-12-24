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
	public List<OrderDTO> orderList(String memberId) throws Exception {
		
		return orderDAO.selectOrderList(memberId);
	}

	@Override
	public OrderDTO orderDetail(int orderCd) throws Exception {
		
		return orderDAO.selectOrderOne(orderCd);
	}

	@Override
	public void modifyOrder(OrderDTO orderDTO) throws Exception {
		orderDAO.updateOrder(orderDTO);
	}

	@Override
	public void removeOrder(int orderCd) throws Exception {
		orderDAO.deleteOrder(orderCd);
	}

	@Override
	public List<OrderDTO> adminOrderList() throws Exception {
	
		return orderDAO.adminOrderList();
	}
	
	
}
