package com.application.bms.Category.service;

import java.util.List;

import com.application.bms.book.dto.BookDTO;

public interface CategoryService {
	public List<BookDTO> koreanNovelList()throws Exception;
	public List<BookDTO> englishNovelList()throws Exception;
	public List<BookDTO> japanNovelList()throws Exception;
	public List<BookDTO> europeanNovelList()throws Exception;
	public List<BookDTO> humanitiesList()throws Exception;
	public List<BookDTO> poetryEssayList()throws Exception;
	public List<BookDTO> economicsManagementList()throws Exception;
	public List<BookDTO> scienceList()throws Exception;
	public List<BookDTO> testPreparationBookList()throws Exception;
	public List<BookDTO> civilServantList()throws Exception;
	public List<BookDTO> foreignLanguageList()throws Exception;
	public List<BookDTO> secondarySchoolReferenceBookList()throws Exception;
	public List<BookDTO> elementarySchoolReferenceBookList()throws Exception;
	public List<BookDTO> internationalBookList()throws Exception;
	public List<BookDTO> usedBookList()throws Exception;
	public List<BookDTO> eBookList()throws Exception;
	public List<BookDTO> bestseller()throws Exception;
	public List<BookDTO> newBook()throws Exception;
	
	
}
