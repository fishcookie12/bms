package com.application.bms.member.dao;

import java.util.List;
import java.util.Map;

import com.application.bms.member.dto.MemberDTO;

public interface MemberDAO {
	public void insertMember(MemberDTO memberDTO)throws Exception;
	
	public MemberDTO selectOneMember(String memberId)throws Exception;
	
	public MemberDTO selectOneDuplicatedMemberCheck(String memberId)throws Exception;
	
	public MemberDTO detailMember(String memberId)throws Exception;
	
	public void updateMember(MemberDTO memberDTO)throws Exception;
	
	public void deleteMember(String memberId)throws Exception;
	
	public String findId(MemberDTO memberDTO)throws Exception;
	
	public MemberDTO findPw(MemberDTO memberDTO)throws Exception;
	
	public void modifyPassword(MemberDTO memberDTO)throws Exception;
	
	public List<MemberDTO> selectListMember(Map<String, Object> searchMap) throws Exception;
	
	//public List<MemberDTO> selectListSearchMember(Map<String, String> searchMap) throws Exception;
	public int selectMyOrderCnt(String memberId) throws Exception;
	public int selectMyCartCnt(String memberId) throws Exception;
	
}
