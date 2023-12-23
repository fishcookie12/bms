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
	public List<Map<String, Object>> selectOrderList(String memberId) throws Exception {
	
		return sqlSession.selectList("orderMapper.selectOrderList", memberId);
	}

	
}
