package com.application.bms.order.dao;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.application.bms.book.dto.BookDTO;
import com.application.bms.order.dto.OrderDTO;

public interface OrderDAO {
	public List<Map<String,Object>> getListByCart(String memberId)throws Exception;
	public void insertOrder(OrderDTO orderDTO)throws Exception;
	
	public List<OrderDTO> selectOrderList(String memberId)throws Exception;
	public OrderDTO selectOrderOne(int orderCd)throws Exception;
	public void updateOrder(OrderDTO orderDTO)throws Exception;
	public void deleteOrder(int orderCd)throws Exception;
	public List<OrderDTO> adminOrderList()throws Exception;
	public int allsalse()throws Exception;
	public int getWomanSales()throws Exception;
	public List<OrderDTO> getWomanBestSeller()throws Exception;
	public List<OrderDTO> bestSeller()throws Exception;
	public void updateStock(Map<String,Object> orderMap)throws Exception;
	public void deleteCart()throws Exception;
}
