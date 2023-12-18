package com.application.bms.cart.service;

import java.util.List;

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
	public List<CartDTO> cartList() throws Exception {
		
		return cartDAO.selectCartList();
	}

}
