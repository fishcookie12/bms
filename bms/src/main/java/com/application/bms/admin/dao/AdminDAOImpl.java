package com.application.bms.admin.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.application.bms.admin.dto.AdminDTO;
@Repository
public class AdminDAOImpl implements AdminDAO {
	@Autowired
	private SqlSession sqlSession;
	@Override
	public AdminDTO selectOneAdmin(AdminDTO adminDTO) throws Exception {
	
		return sqlSession.selectOne("adminMapper.selectOneAdmin", adminDTO);
	}
	
}
