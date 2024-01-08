package com.application.bms.member.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.application.bms.member.dao.MemberDAO;
import com.application.bms.member.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDAO memberDAO;
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	@Override
	public void addMember(MemberDTO memberDTO)throws Exception {
		memberDTO.setPasswd(bCryptPasswordEncoder.encode(memberDTO.getPasswd()));
		memberDAO.insertMember(memberDTO);
		
	}

	@Override
	public MemberDTO loginMember(MemberDTO memberDTO) throws Exception {
		MemberDTO dbMember=memberDAO.selectOneMember(memberDTO.getMemberId());
		if(dbMember !=null) {
			if(bCryptPasswordEncoder.matches(memberDTO.getPasswd(), dbMember.getPasswd())) {
				return memberDTO;
			}
		}
		return null;
	}

	@Override
	public String checkOverlappedId(String memberId) throws Exception {
		String checkId="Y";
		if(memberDAO.selectOneDuplicatedMemberCheck(memberId) == null) {
			checkId="N";
		}
		return checkId;
	}

	@Override
	public MemberDTO getMemberDetail(String memberId) throws Exception {
		
		return memberDAO.selectOneMember(memberId);
	}
	
	@Override
	public boolean isAuthentication(MemberDTO memberDTO) throws Exception {
		MemberDTO dbMemberDTO=memberDAO.selectOneMember(memberDTO.getMemberId());
		if(bCryptPasswordEncoder.matches(memberDTO.getPasswd(), dbMemberDTO.getPasswd())){
			return true;
		}
		return false;
	}
	
	@Override
	public void modifyMember(MemberDTO memberDTO) throws Exception {
		memberDTO.setPasswd(bCryptPasswordEncoder.encode(memberDTO.getPasswd()));
		memberDAO.updateMember(memberDTO);
		
	}

	@Override
	public void removeMember(String memberId) throws Exception {
		memberDAO.deleteMember(memberId);
		
	}
	
	@Override
	public String findMemberId(MemberDTO memberDTO) throws Exception {
		String findId=memberDAO.findId(memberDTO);
		if(findId!=null) {
			return findId;
		}
		
		return null;
	}

	@Override
	public MemberDTO findMemberPw(MemberDTO memberDTO) throws Exception {
		
		if(memberDAO.findPw(memberDTO)!=null) {
			return memberDAO.findPw(memberDTO);
		}
		return null;
	}
	
	

	@Override
	public void modifyPw(MemberDTO memberDTO) throws Exception {
		memberDTO.setPasswd(bCryptPasswordEncoder.encode(memberDTO.getPasswd()));
		memberDAO.modifyPassword(memberDTO);
		
	}

	
	@Override
	public List<MemberDTO> getMemberList(Map<String, Object> searchMap) throws Exception {
		return memberDAO.selectListMember(searchMap);
	}
	
	@Override
	public int getMyOrderCnt(String memberId) throws Exception {
		return memberDAO.selectMyOrderCnt(memberId);
	}

	@Override
	public int getMyCartCnt(String memberId) throws Exception {
		return memberDAO.selectMyCartCnt(memberId);
	}




}
