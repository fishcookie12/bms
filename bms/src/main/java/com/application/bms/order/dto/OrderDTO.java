package com.application.bms.order.dto;

import java.util.Date;

import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;

@Component

public class OrderDTO {
	private int orderCd;
	private String memberId;
	private int bookCd;
	private String bookNm;
	private int orderBookQty;
	private int totalPrice;
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
	public int getBookCd() {
		return bookCd;
	}
	public void setBookCd(int bookCd) {
		this.bookCd = bookCd;
	}
	public String getBookNm() {
		return bookNm;
	}
	public void setBookNm(String bookNm) {
		this.bookNm = bookNm;
	}
	public int getOrderBookQty() {
		return orderBookQty;
	}
	public void setOrderBookQty(int orderBookQty) {
		this.orderBookQty = orderBookQty;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
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
		return "OrderDTO [orderCd=" + orderCd + ", memberId=" + memberId + ", bookCd=" + bookCd + ", bookNm=" + bookNm
				+ ", orderBookQty=" + orderBookQty + ", totalPrice=" + totalPrice + ", paymentMethod=" + paymentMethod
				+ ", hp=" + hp + ", receiver=" + receiver + ", deliveryAdress=" + deliveryAdress + ", deliveryMessage="
				+ deliveryMessage + ", deliveryStatus=" + deliveryStatus + ", orderDt=" + orderDt + "]";
	}
	
}
