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

	@Override
	public List<BookDTO> selectJapanNovel() throws Exception {
		
		return sqlSession.selectList("categoryMapper.selectJapanNovel");
	}

	@Override
	public List<BookDTO> selectEuropeanNovel() throws Exception {
		return sqlSession.selectList("categoryMapper.selectEuropeanNovel");
	}
	
	@Override
	public List<BookDTO> selectHumanities() throws Exception {
		
		return sqlSession.selectList("categoryMapper.selectHumanities");
	}

	@Override
	public List<BookDTO> selectPoetryEssay() throws Exception {
		
		return sqlSession.selectList("categoryMapper.selectPoetryEssay");
	}

	@Override
	public List<BookDTO> selectEconomicsManagement() throws Exception {
		
		return sqlSession.selectList("categoryMapper.selectEconomicsManagement");
	}

	@Override
	public List<BookDTO> selectScience() throws Exception {
		
		return sqlSession.selectList("categoryMapper.selectScience");
	}

	@Override
	public List<BookDTO> selecttestPreparationBook() throws Exception {
	
		return sqlSession.selectList("categoryMapper.testPreparationBook");
	}

	@Override
	public List<BookDTO> selectcivilServant() throws Exception {
		
		return sqlSession.selectList("categoryMapper.selectcivilServant");
	}

	@Override
	public List<BookDTO> selectforeignLanguage() throws Exception {
		
		return sqlSession.selectList("categoryMapper.selectforeignLanguage");
	}

	@Override
	public List<BookDTO> selectSecondarySchoolReferenceBook() throws Exception {
		
		return sqlSession.selectList("categoryMapper.selectSecondarySchoolReferenceBook");
	}

	@Override
	public List<BookDTO> selectElementarySchoolReferenceBook() throws Exception {
		
		return sqlSession.selectList("categoryMapper.selectElementarySchoolReferenceBook");
	}

	@Override
	public List<BookDTO> selectInternationalBook() throws Exception {
		
		return sqlSession.selectList("categoryMapper.selectInternationalBook");
	}

	@Override
	public List<BookDTO> selectUsedBook() throws Exception {
		
		return sqlSession.selectList("categoryMapper.selectUsedBook");
	}

	@Override
	public List<BookDTO> selectEBook() throws Exception {
		
		return sqlSession.selectList("categoryMapper.selectEBook");
	}

	@Override
	public List<BookDTO> selectBestseller() throws Exception {
		
		return sqlSession.selectList("categoryMapper.selectBestseller");
	}

	@Override
	public List<BookDTO> selectNewBook() throws Exception {
		
		return sqlSession.selectList("categoryMapper.selectNewBook");
	}

	
}
