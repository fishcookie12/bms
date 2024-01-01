package com.application.bms.member.dao;

import java.util.List;
import java.util.Map;

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
	public void deleteMember(String memberId) throws Exception {
		sqlSession.delete("memberMapper.deleteMember", memberId);
		
	}

	@Override
	public String findId(MemberDTO memberDTO) throws Exception {
		
		return sqlSession.selectOne("memberMapper.findId", memberDTO);
	}

	@Override
	public MemberDTO findPw(String memberId) throws Exception {
		
		return sqlSession.selectOne("memberMapper.findPw", memberId);
	}

	@Override
	public void temporaryPassword(MemberDTO memberDTO) throws Exception {
		
		sqlSession.update("memberMapper.temporaryPassword", memberDTO);
	}

	@Override
	public List<MemberDTO> selectListMember(Map<String, Object> searchMap) throws Exception {
		return sqlSession.selectList("memberMapper.selectListMember",searchMap);
	}
	
	/*
	@Override
	public List<MemberDTO> selectListSearchMember(Map<String, String> searchMap) throws Exception {
		return sqlSession.selectList("memberMapper.selectListSearchMember" , searchMap);
	}
	*/
	@Override
	public int selectMyOrderCnt(String memberId) throws Exception {
		
		return sqlSession.selectOne("memberMapper.selectMyOrderCnt" , memberId);
	}

	@Override
	public int selectMyCartCnt(String memberId) throws Exception {
		return sqlSession.selectOne("memberMapper.selectMyCartCnt" , memberId);
	}
	
}
