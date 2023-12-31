package com.application.bms.member.service;

import java.util.List;
import java.util.Map;

import com.application.bms.member.dto.MemberDTO;

public interface MemberService {
	public void addMember(MemberDTO memberDTO)throws Exception;
	public MemberDTO loginMember(MemberDTO memberDTO)throws Exception;
	public String checkOverlappedId(String memberId)throws Exception;
	public MemberDTO getMemberDetail(String memberId)throws Exception;
	public boolean isAuthentication(MemberDTO memberDTO)throws Exception;
	public void modifyMember(MemberDTO memberDTO)throws Exception;
	public void removeMember(String memberId)throws Exception;
	public String findMemberId(MemberDTO memberDTO)throws Exception;
	public MemberDTO findMemberPw(MemberDTO memberDTO)throws Exception;
	public void modifyPw(MemberDTO memberDTO)throws Exception;
	public List<MemberDTO> getMemberList(Map<String, Object> searchMap) throws Exception;
	
}
