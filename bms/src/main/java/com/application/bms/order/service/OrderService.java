package com.application.bms.order.service;

import com.application.bms.order.dto.OrderDTO;

public interface OrderService {
	public void addOrder(OrderDTO orderDTO)throws Exception;
}
