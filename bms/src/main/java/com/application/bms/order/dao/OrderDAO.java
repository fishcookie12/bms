package com.application.bms.order.dao;

import java.util.List;
import java.util.Map;

import com.application.bms.order.dto.OrderDTO;

public interface OrderDAO {
	public void insertOrder(OrderDTO orderDTO)throws Exception;
	public List<OrderDTO> selectOrderList(String memberId)throws Exception;
	public OrderDTO selectOrderOne(int orderCd)throws Exception;
	public void updateOrder(OrderDTO orderDTO)throws Exception;
	public void deleteOrder(int orderCd)throws Exception;
	public List<OrderDTO> adminOrderList()throws Exception;
	
}
