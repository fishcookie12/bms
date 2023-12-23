package com.application.bms.order.dao;

import java.util.List;
import java.util.Map;

import com.application.bms.order.dto.OrderDTO;

public interface OrderDAO {
	public void insertOrder(OrderDTO orderDTO)throws Exception;
	public List<Map<String,Object>> selectOrderList(String memberId)throws Exception;
}
