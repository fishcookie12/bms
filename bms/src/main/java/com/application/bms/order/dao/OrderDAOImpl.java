package com.application.bms.order.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.application.bms.order.dto.OrderDTO;

@Repository
public class OrderDAOImpl implements OrderDAO {
	@Autowired
	private SqlSession sqlSession;

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
	public List<OrderDTO> adminOrderList() throws Exception {
		
		return sqlSession.selectList("orderMapper.adminOrderList");
	}

	
}
