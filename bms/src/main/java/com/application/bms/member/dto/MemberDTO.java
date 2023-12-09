package com.application.bms.member.dto;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class MemberDTO {
	private String memberId;
	private String passwd;
	private String memberNm;
	private String sex;
	private String birthDt;
	private String hp;
	private String email;
	private Date joinDt;
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getMemberNm() {
		return memberNm;
	}
	public void setMemberNm(String memberNm) {
		this.memberNm = memberNm;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getBirthDt() {
		return birthDt;
	}
	public void setBirthDt(String birthDt) {
		this.birthDt = birthDt;
	}
	public String getHp() {
		return hp;
	}
	public void setHp(String hp) {
		this.hp = hp;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getJoinDt() {
		return joinDt;
	}
	public void setJoinDt(Date joinDt) {
		this.joinDt = joinDt;
	}
	@Override
	public String toString() {
		return "MemberDTO [memberId=" + memberId + ", passwd=" + passwd + ", memberNm=" + memberNm + ", sex=" + sex
				+ ", birthDt=" + birthDt + ", hp=" + hp + ", email=" + email + ", joinDt=" + joinDt + "]";
	}
	
	
}
