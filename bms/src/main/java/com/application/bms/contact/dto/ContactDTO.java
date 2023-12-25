package com.application.bms.contact.dto;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class ContactDTO {
	private int contactCd;
	private String memberId;
	private String email;
	private String message;
	private Date enrollDt;
	private String resolved;
	public int getContactCd() {
		return contactCd;
	}
	public void setContactCd(int contactCd) {
		this.contactCd = contactCd;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Date getEnrollDt() {
		return enrollDt;
	}
	public void setEnrollDt(Date enrollDt) {
		this.enrollDt = enrollDt;
	}
	public String getResolved() {
		return resolved;
	}
	public void setResolved(String resolved) {
		this.resolved = resolved;
	}
	@Override
	public String toString() {
		return "ContactDTO [contactCd=" + contactCd + ", memberId=" + memberId + ", email=" + email + ", message="
				+ message + ", enrollDt=" + enrollDt + ", resolved=" + resolved + "]";
	}
	
}
