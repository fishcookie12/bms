package com.application.bms.Category.service;

import java.util.List;

import com.application.bms.book.dto.BookDTO;

public interface CategoryService {
	public List<BookDTO> koreanNovelList()throws Exception;
	public List<BookDTO> englishNovelList()throws Exception;
}
