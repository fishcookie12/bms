package com.application.bms.cart.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.application.bms.cart.dto.CartDTO;
@Repository
public class CartDAOImpl implements CartDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void insertCart(CartDTO cartDTO) throws Exception {
		sqlSession.insert("cartMapper.insertCart", cartDTO);
		
	}
	
	@Override
	public List<Map<String,Object>> selectCartList(String memberId) throws Exception {
		
		return sqlSession.selectList("cartMapper.selectCartList",memberId);
	}

}
