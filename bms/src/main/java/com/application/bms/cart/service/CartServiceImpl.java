package com.application.bms.cart.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.application.bms.cart.dao.CartDAO;
import com.application.bms.cart.dto.CartDTO;
@Service
public class CartServiceImpl implements CartService {
	@Autowired
	private CartDAO cartDAO;
	
	@Override
	public void addCart(CartDTO cartDTO) throws Exception {
		cartDAO.insertCart(cartDTO);
		
	}

	@Override
	public List<Map<String,Object>> cartList(String memberId) throws Exception {
		
		return cartDAO.selectCartList(memberId);
	}

	@Override
	public void modifyCart(CartDTO cartDTO) throws Exception {
		cartDAO.updateCart(cartDTO);
		
	}

	@Override
	public void removeCart(int cartCd) throws Exception {
		cartDAO.deleteCart(cartCd);
		
	}

	@Override
	public void clearCart(String memberId) throws Exception {
		cartDAO.clearCart(memberId);
	}

}
