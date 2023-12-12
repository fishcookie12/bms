package com.application.bms.book.dao;

import java.util.List;

import com.application.bms.book.dto.BookDTO;

public interface BookDAO {
	public void insertBook(BookDTO bookDTO)throws Exception;
	public List<BookDTO> selectBookList()throws Exception;
	public BookDTO selectOneBook(int bookCd)throws Exception;
	public void updateBook(BookDTO bookDTO)throws Exception;
	public void deleteBook(int bookCd)throws Exception;
}
