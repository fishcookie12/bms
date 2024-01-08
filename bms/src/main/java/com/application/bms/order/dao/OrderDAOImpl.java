package com.application.bms.order.dao;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.application.bms.book.dto.BookDTO;
import com.application.bms.member.dto.MemberDTO;
import com.application.bms.order.dto.OrderDTO;

@Repository
public class OrderDAOImpl implements OrderDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<Map<String, Object>> getListByCart(String memberId) throws Exception {
		
		return sqlSession.selectList("orderMapper.getListByCart", memberId);
	}
	
	@Override
	public void insertOrder(OrderDTO orderDTO) throws Exception {
		sqlSession.insert("orderMapper.insertOrder", orderDTO);
		
	}
	
	@Override
	public List<OrderDTO> selectOrderList(String memberId) throws Exception {
	
		return sqlSession.selectList("orderMapper.selectOrderList", memberId);
	}

	@Override
	public OrderDTO selectOrderOne(int orderCd) throws Exception {
		
		return sqlSession.selectOne("orderMapper.selectOrderOne", orderCd);
	}

	@Override
	public void updateOrder(OrderDTO orderDTO) throws Exception {
		
		sqlSession.update("orderMapper.updateOrder", orderDTO);
	}

	@Override
	public void deleteOrder(int orderCd) throws Exception {
		sqlSession.delete("orderMapper.deleteOrder",orderCd);
		
	}

	@Override
	public List<OrderDTO> adminOrderList(Map<String, Object>searchMap) throws Exception {
		
		return sqlSession.selectList("orderMapper.adminOrderList",searchMap);
	}

	@Override
	public void updateStock(Map<String,Object> orderMap) throws Exception {
		sqlSession.update("orderMapper.updateStock", orderMap);
		
	}

	@Override
	public Integer allsalse() throws Exception {
		
		return sqlSession.selectOne("orderMapper.allsalse");
	}

	@Override
	public List<OrderDTO> bestSeller() throws Exception {
		return sqlSession.selectList("orderMapper.bestSeller");
	}

	@Override
	public Integer getWomanSales() throws Exception {
		
		return sqlSession.selectOne("orderMapper.getWomanSales");
	}

	@Override
	public List<OrderDTO> getWomanBestSeller() throws Exception {
		
		return sqlSession.selectList("orderMapper.getWomanBestSeller");
	}

	@Override
	public Integer getManSales() throws Exception {
		
		return sqlSession.selectOne("orderMapper.getManSales");
	}

	@Override
	public List<OrderDTO> getManBestSeller() throws Exception {
		
		return sqlSession.selectList("orderMapper.getManBestSeller");
	}
	
	@Override
	public void insertOrderByCart(List<OrderDTO> orderList) throws Exception{
		sqlSession.insert("orderMapper.insertOrderByCart" , orderList);
	}
	
	@Override
	public int selectOneTodayNewOrderCnt(String today) throws Exception {
		return sqlSession.selectOne("member.selectOneTodayNewOrderCnt" , today);
	}

}
