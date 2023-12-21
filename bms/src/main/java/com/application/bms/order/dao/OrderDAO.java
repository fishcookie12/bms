package com.application.bms.order.dao;

import com.application.bms.order.dto.OrderDTO;

public interface OrderDAO {
	public void insertOrder(OrderDTO orderDTO)throws Exception;
}
