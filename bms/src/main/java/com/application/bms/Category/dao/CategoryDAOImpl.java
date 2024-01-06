package com.application.bms.Category.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.application.bms.book.dto.BookDTO;

@Repository
public class CategoryDAOImpl implements CategoryDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<BookDTO> selectKoreanNovel() throws Exception {
		return sqlSession.selectList("categoryMapper.selectKoreanNovel");
	}

	@Override
	public List<BookDTO> selectenglishNovel() throws Exception {
		
		return sqlSession.selectList("categoryMapper.selectenglishNovel");
	}
}
