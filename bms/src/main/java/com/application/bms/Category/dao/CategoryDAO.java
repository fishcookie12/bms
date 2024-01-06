package com.application.bms.Category.dao;

import java.util.List;

import com.application.bms.book.dto.BookDTO;

public interface CategoryDAO {
	public List<BookDTO> selectKoreanNovel()throws Exception;
	public List<BookDTO> selectenglishNovel()throws Exception;
	
}
