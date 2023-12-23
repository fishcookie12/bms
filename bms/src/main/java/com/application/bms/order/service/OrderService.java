package com.application.bms.order.service;

import java.util.List;
import java.util.Map;

import com.application.bms.order.dto.OrderDTO;

public interface OrderService {
	public void addOrder(OrderDTO orderDTO)throws Exception;
	public List<Map<String,Object>> orderList(String memberId)throws Exception;
}
