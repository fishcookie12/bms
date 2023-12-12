package com.application.bms.book.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.application.bms.book.dao.BookDAO;
import com.application.bms.book.dto.BookDTO;
@Service
public class BookServiceImpl implements BookService {
	@Autowired
	private BookDAO bookDAO;
	
	@Override
	public void addBook(BookDTO bookDTO) throws Exception {
		bookDAO.insertBook(bookDTO);
	}

	@Override
	public List<BookDTO> getBookList() throws Exception {
		
		return bookDAO.selectBookList();
	}

	@Override
	public BookDTO getBookDetail(int bookCd) throws Exception {
		
		return bookDAO.selectOneBook(bookCd);
	}

	@Override
	public void modifyBook(BookDTO bookDTO) throws Exception {
		bookDAO.updateBook(bookDTO);
		
	}

	@Override
	public void removeBook(int bookCd) throws Exception {
		bookDAO.deleteBook(bookCd);
		
	}

}
