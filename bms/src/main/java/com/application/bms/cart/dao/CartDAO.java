package com.application.bms.cart.dao;

import java.util.List;
import java.util.Map;

import com.application.bms.cart.dto.CartDTO;

public interface CartDAO {
	public void insertCart(CartDTO cartDTO)throws Exception;
	public List<Map<String,Object>> selectCartList(String memberId)throws Exception;
	public void updateCart(CartDTO cartDTO)throws Exception;
	public void deleteCart(int cartCd)throws Exception;
	public void clearCart(String memberId)throws Exception;
}
