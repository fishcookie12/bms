package com.application.bms.cart.dto;

import org.springframework.stereotype.Component;

@Component
public class CartDTO {
	private int cartCd;
	private String memberId;
	private int bookCd;
	private int quantity;
	public int getCartCd() {
		return cartCd;
	}
	public void setCartCd(int cartCd) {
		this.cartCd = cartCd;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public int getBookCd() {
		return bookCd;
	}
	public void setBookCd(int bookCd) {
		this.bookCd = bookCd;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	@Override
	public String toString() {
		return "CartDTO [cartCd=" + cartCd + ", memberId=" + memberId + ", bookCd=" + bookCd + ", quantity=" + quantity
				+ "]";
	}
	
	
	
}
