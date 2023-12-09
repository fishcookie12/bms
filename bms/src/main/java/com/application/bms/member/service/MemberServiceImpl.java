package com.application.bms.member.service;

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
		
		return memberDAO.detailMember(memberId);
	}
	
	@Override
	public void modifyMember(MemberDTO memberDTO) throws Exception {
		memberDAO.updateMember(memberDTO);
		
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
	public String findMemberPw(String memberId) throws Exception {
		String findPw=memberDAO.findPw(memberId);
		if(findPw!=null) {
			return findPw;
		}
		return null;
	}

}
