package com.application.bms.order.dto;

import java.util.Date;
import java.util.List;

public class OrderDTO2 {


	private int orderCd;
	private String memberId;
	private List<Integer> bookCd;
	private List<String> bookNm;
	private List<Integer> orderBookQty;
	private List<Integer> totalPrice;
	private String paymentMethod;
	private String hp;
	private String receiver;
	private String deliveryAdress;
	private String deliveryMessage;
	private String deliveryStatus;
	private Date orderDt;
	public int getOrderCd() {
		return orderCd;
	}
	public void setOrderCd(int orderCd) {
		this.orderCd = orderCd;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	
	
	public List<Integer> getBookCd() {
		return bookCd;
	}
	public void setBookCd(List<Integer> bookCd) {
		this.bookCd = bookCd;
	}
	public List<String> getBookNm() {
		return bookNm;
	} 
	public void setBookNm(List<String> bookNm) {
		this.bookNm = bookNm;
	}
	public List<Integer> getOrderBookQty() {
		return orderBookQty;
	}
	public void setOrderBookQty(List<Integer> orderBookQty) {
		this.orderBookQty = orderBookQty;
	}
	public List<Integer> getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(List<Integer> totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getPaymentMethod() {
		return paymentMethod;
	}
	public void setPaymentMethod(String paymentMethod) {
		this.paymentMethod = paymentMethod;
	}
	public String getHp() {
		return hp;
	}
	public void setHp(String hp) {
		this.hp = hp;
	}
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	public String getDeliveryAdress() {
		return deliveryAdress;
	}
	public void setDeliveryAdress(String deliveryAdress) {
		this.deliveryAdress = deliveryAdress;
	}
	public String getDeliveryMessage() {
		return deliveryMessage;
	}
	public void setDeliveryMessage(String deliveryMessage) {
		this.deliveryMessage = deliveryMessage;
	}
	public String getDeliveryStatus() {
		return deliveryStatus;
	}
	public void setDeliveryStatus(String deliveryStatus) {
		this.deliveryStatus = deliveryStatus;
	}
	public Date getOrderDt() {
		return orderDt;
	}
	public void setOrderDt(Date orderDt) {
		this.orderDt = orderDt;
	}
	@Override
	public String toString() {
		return "OrderDTO2 [orderCd=" + orderCd + ", memberId=" + memberId + ", bookCd=" + bookCd + ", bookNm=" + bookNm
				+ ", orderBookQty=" + orderBookQty + ", totalPrice=" + totalPrice + ", paymentMethod=" + paymentMethod
				+ ", hp=" + hp + ", receiver=" + receiver + ", deliveryAdress=" + deliveryAdress + ", deliveryMessage="
				+ deliveryMessage + ", deliveryStatus=" + deliveryStatus + ", orderDt=" + orderDt + "]";
	}
	
	
	
	
}
