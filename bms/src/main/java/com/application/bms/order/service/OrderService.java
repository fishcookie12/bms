package com.application.bms.order.service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.application.bms.book.dto.BookDTO;
import com.application.bms.member.dto.MemberDTO;
import com.application.bms.order.dto.OrderDTO;

public interface OrderService {
	
	public void addOrder(OrderDTO orderDTO)throws Exception;
	public List<OrderDTO> orderList(String memberId)throws Exception;
	public OrderDTO orderDetail(int orderCd)throws Exception;
	public void modifyOrder(OrderDTO orderDTO)throws Exception;
	public void removeOrder(int orderCd)throws Exception;
	public List<OrderDTO> adminOrderList()throws Exception;
	public int totalSales()throws Exception;
	public int totalWomanSales()throws Exception;
	public int totalManSales()throws Exception;
	public List<OrderDTO> bestSaller()throws Exception;
	public List<OrderDTO> womanBestSaller()throws Exception;
	public List<OrderDTO> manBestSaller()throws Exception;
	
}
