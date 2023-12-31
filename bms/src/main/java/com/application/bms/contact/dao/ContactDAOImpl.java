package com.application.bms.contact.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.application.bms.contact.dto.ContactDTO;

@Repository
public class ContactDAOImpl implements ContactDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void insertContact(ContactDTO contactDTO) throws Exception {
		sqlSession.insert("contactMapper.insertContact", contactDTO);
		
	}

	@Override
	public List<ContactDTO> selectListContact(Map<String, Object>searchMap) throws Exception {
		
		return sqlSession.selectList("contactMapper.selectListContact",searchMap);
	}

	@Override
	public void updateContact(ContactDTO contactDTO) throws Exception {
		sqlSession.update("contactMapper.updateContact", contactDTO);
		
	}

	@Override
	public ContactDTO selectOneContact(int contactCd) throws Exception {
		
		return sqlSession.selectOne("contactMapper.selectOneContact", contactCd);
	}
		
	
}
