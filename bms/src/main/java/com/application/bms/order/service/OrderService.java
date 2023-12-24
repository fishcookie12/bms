package com.application.bms.order.service;

import java.util.List;
import java.util.Map;

import com.application.bms.order.dto.OrderDTO;

public interface OrderService {
	public void addOrder(OrderDTO orderDTO)throws Exception;
	public List<OrderDTO> orderList(String memberId)throws Exception;
	public OrderDTO orderDetail(int orderCd)throws Exception;
	public void modifyOrder(OrderDTO orderDTO)throws Exception;
	public void removeOrder(int orderCd)throws Exception;
	public List<OrderDTO> adminOrderList()throws Exception;
}
