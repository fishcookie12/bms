package com.application.bms.book.service;

import java.util.List;

import com.application.bms.book.dto.BookDTO;

public interface BookService {
	public void addBook(BookDTO bookDTO)throws Exception;
	public List<BookDTO> getBookList()throws Exception;
	public BookDTO getBookDetail(int bookCd)throws Exception;
	public void modifyBook(BookDTO bookDTO)throws Exception;
	public void removeBook(int bookCd)throws Exception;
}
