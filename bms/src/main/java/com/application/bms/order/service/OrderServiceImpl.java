package com.application.bms.order.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
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
	
	private static final String FILE_REPO_PATH ="C:\\bms_book_file_repo\\"; //window
	//private static final String FILE_REPO_PATH ="/var/lib/tomcat9/file_repo/"; //linux
	
	private static Logger logger = LoggerFactory.getLogger(OrderServiceImpl.class);

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
		orderDTO.setPaymentMethod(orderDTO2.getPaymentMethod());
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
			orderMap.put("memberId", orderDTO.getMemberId());
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
	public Integer totalSales() throws Exception {
		
		return orderDAO.allsalse();
	}

	@Override
	public List<OrderDTO> bestSaller() throws Exception {
		
		return orderDAO.bestSeller();
	}

	@Override
	public Integer totalWomanSales() throws Exception {
		
		return orderDAO.getWomanSales();
	}

	@Override
	public List<OrderDTO> womanBestSaller() throws Exception {
		
		return orderDAO.getWomanBestSeller();
	}

	@Override
	public Integer totalManSales() throws Exception {
		
		return orderDAO.getManSales();
	}

	@Override
	public List<OrderDTO> manBestSaller() throws Exception {
		
		return orderDAO.getManBestSeller();
	}
	
	@Override
	@Scheduled(cron="59 59 23 * * *")
	public void getTodayNewMemberCnt() throws Exception {
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String today = sdf.format(new Date());
		logger.info("(" + today + ") 신규주문건수 : " + orderDAO.selectOneTodayNewOrderCnt(today));
		
	}

}
