package com.application.bms.Category.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.application.bms.Category.dao.CategoryDAO;
import com.application.bms.book.dto.BookDTO;

@Service
public class CategoryServiceImpl implements CategoryService {
	@Autowired
	private CategoryDAO categoryDAO;

	@Override
	public List<BookDTO> koreanNovelList() throws Exception {
		
		return categoryDAO.selectKoreanNovel();
	}

	@Override
	public List<BookDTO> englishNovelList() throws Exception {
		
		return categoryDAO.selectenglishNovel();
	}
}
