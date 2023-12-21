package com.application.bms.order.dto;

import java.util.Date;

import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;

@Component

public class OrderDTO {
	private String memberId;
	private int bookCd;
	private int orderBookQty;
	private String receiver;
	private String deliveryAdress;
	private String deliveryMessage;
	private String deliveryStatus;
	private Date orderDt;
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
	public int getOrderBookQty() {
		return orderBookQty;
	}
	public void setOrderBookQty(int orderBookQty) {
		this.orderBookQty = orderBookQty;
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
		return "OrderDTO [memberId=" + memberId + ", bookCd=" + bookCd + ", orderBookQty=" + orderBookQty
				+ ", receiver=" + receiver + ", deliveryAdress=" + deliveryAdress + ", deliveryMessage="
				+ deliveryMessage + ", deliveryStatus=" + deliveryStatus + ", orderDt=" + orderDt + "]";
	}
	
	
}
