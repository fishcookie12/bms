package com.application.bms.book.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.application.bms.book.dto.BookDTO;

@Repository
public class BookDAOImpl implements BookDAO {

	@Autowired
	private SqlSession sqlSession;
	@Override
	public void insertBook(BookDTO bookDTO) throws Exception {
		sqlSession.insert("bookMapper.insertBook",bookDTO);
		
	}
	@Override
	public List<BookDTO> selectBookList(Map<String, Object> searchMap) throws Exception {
		
		return sqlSession.selectList("bookMapper.selectBookList",searchMap);
	}
	@Override
	public BookDTO selectOneBook(int bookCd) throws Exception {
		
		return sqlSession.selectOne("bookMapper.selectOneBook", bookCd);
	}
	@Override
	public void updateBook(BookDTO bookDTO) throws Exception {
		sqlSession.update("bookMapper.updateBook", bookDTO);
		
	}
	@Override
	public void deleteBook(int bookCd) throws Exception {
		sqlSession.delete("bookMapper.deleteBook",bookCd);
	}
	

}
