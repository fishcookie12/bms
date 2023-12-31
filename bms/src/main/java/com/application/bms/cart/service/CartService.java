package com.application.bms.cart.service;

import java.util.List;
import java.util.Map;

import com.application.bms.cart.dto.CartDTO;

public interface CartService {
	public void addCart(CartDTO cartDTO)throws Exception;
	public List<Map<String,Object>> cartList(String memberId)throws Exception;
	public void modifyCart(CartDTO cartDTO)throws Exception;
	public void removeCart(int cartCd)throws Exception;
	public void clearCart(String memberId)throws Exception;
	public void stockBook(Map<String, Object> orderDTO)throws Exception;
}
