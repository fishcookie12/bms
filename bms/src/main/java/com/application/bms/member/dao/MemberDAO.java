package com.application.bms.member.dao;

import com.application.bms.member.dto.MemberDTO;

public interface MemberDAO {
	public void insertMember(MemberDTO memberDTO)throws Exception;
	
	public MemberDTO selectOneMember(String memberId)throws Exception;
	
	public MemberDTO selectOneDuplicatedMemberCheck(String memberId)throws Exception;
	
	public MemberDTO detailMember(String memberId)throws Exception;
	
	public void updateMember(MemberDTO memberDTO)throws Exception;
	
	public String findId(MemberDTO memberDTO)throws Exception;
	
	public String findPw(String memeberId)throws Exception;
}