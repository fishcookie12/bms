package com.application.bms.member.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.application.bms.member.dto.MemberDTO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void insertMember(MemberDTO memberDTO)throws Exception {
		sqlSession.insert("memberMapper.insertMember",memberDTO);
		
	}

	@Override
	public MemberDTO selectOneMember(String memberId) throws Exception {
	
		return sqlSession.selectOne("memberMapper.selectOneMember", memberId);
	}

	@Override
	public MemberDTO selectOneDuplicatedMemberCheck(String memberId) throws Exception {
		
		return sqlSession.selectOne("memberMapper.selectOneDuplicatedMemberCheck", memberId);
	}

	@Override
	public MemberDTO detailMember(String memberId) throws Exception {
		
		return sqlSession.selectOne("memberMapper.detailMember");
	}
	
	@Override
	public void updateMember(MemberDTO memberDTO) throws Exception {
		sqlSession.update("memberMapper.updateMember", memberDTO);
		
	}

	@Override
	public String findId(MemberDTO memberDTO) throws Exception {
		
		return sqlSession.selectOne("memberMapper.findId", memberDTO);
	}

	@Override
	public String findPw(String memeberId) throws Exception {
		
		return sqlSession.selectOne("memberMapper.findPw", memeberId);
	}

}
