package com.application.bms.order.service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.application.bms.book.dto.BookDTO;
import com.application.bms.member.dto.MemberDTO;
import com.application.bms.order.dao.OrderDAO;
import com.application.bms.order.dto.OrderDTO;
import com.application.bms.order.dto.OrderDTO2;

@Service
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderDAO orderDAO;

	@Override
	@Transactional
	public void addOrder(OrderDTO orderDTO) throws Exception {
		Map<String, Object> orderMap = new HashMap<String, Object>();
		
		orderMap.put("orderBookQty", orderDTO.getOrderBookQty());
		orderMap.put("bookCd", orderDTO.getBookCd());
		
		orderDAO.updateStock(orderMap);
		orderDAO.insertOrder(orderDTO);
	}
	
	@Override
	@Transactional
	public void addOrder(OrderDTO2 orderDTO2) throws Exception {
	
		OrderDTO orderDTO = new OrderDTO();
		orderDTO.setMemberId(orderDTO2.getMemberId());
		orderDTO.setDeliveryAdress(orderDTO2.getDeliveryAdress());
		orderDTO.setDeliveryMessage(orderDTO2.getDeliveryMessage());
		orderDTO.setDeliveryStatus(orderDTO2.getDeliveryStatus());
		orderDTO.setOrderDt(orderDTO2.getOrderDt());
		orderDTO.setReceiver(orderDTO2.getReceiver());
		orderDTO.setHp(orderDTO2.getHp());
		
		for(int i=0; i<orderDTO2.getBookNm().size(); i++) {
			orderDTO.setBookCd(orderDTO2.getBookCd().get(i));
			orderDTO.setBookNm(orderDTO2.getBookNm().get(i));
			orderDTO.setOrderBookQty(orderDTO2.getOrderBookQty().get(i));
			orderDTO.setTotalPrice(orderDTO2.getTotalPrice().get(i));
			orderDAO.insertOrder(orderDTO);
			
			Map<String, Object> orderMap = new HashMap<String, Object>();
			orderMap.put("orderBookQty", orderDTO.getOrderBookQty());
			orderMap.put("bookCd", orderDTO.getBookCd());
			orderDAO.updateStock(orderMap);
		}
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
	public List<OrderDTO> adminOrderList(Map<String, Object> searchMap) throws Exception {
	
		return orderDAO.adminOrderList(searchMap);
	}

	@Override
	public int totalSales() throws Exception {
		
		return orderDAO.allsalse();
	}

	@Override
	public List<OrderDTO> bestSaller() throws Exception {
		
		return orderDAO.bestSeller();
	}

	@Override
	public int totalWomanSales() throws Exception {
		
		return orderDAO.getWomanSales();
	}

	@Override
	public List<OrderDTO> womanBestSaller() throws Exception {
		
		return orderDAO.getWomanBestSeller();
	}

	@Override
	public int totalManSales() throws Exception {
		
		return orderDAO.getManSales();
	}

	@Override
	public List<OrderDTO> manBestSaller() throws Exception {
		
		return orderDAO.getManBestSeller();
	}
	/*
	@Override
	public int getAllOrderCnt(Map<String, String> searchCntMap) throws Exception {
		
		return orderDAO.selectOneAllOrderCnt(searchCntMap);
	}
	*/
}
