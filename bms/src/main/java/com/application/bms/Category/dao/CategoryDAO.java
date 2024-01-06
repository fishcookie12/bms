package com.application.bms.Category.dao;

import java.util.List;

import com.application.bms.book.dto.BookDTO;

public interface CategoryDAO {
	public List<BookDTO> selectKoreanNovel()throws Exception;
	public List<BookDTO> selectenglishNovel()throws Exception;
	public List<BookDTO> selectJapanNovel()throws Exception;
	public List<BookDTO> selectEuropeanNovel()throws Exception;
	public List<BookDTO> selectHumanities()throws Exception;
	public List<BookDTO> selectPoetryEssay()throws Exception;
	public List<BookDTO> selectEconomicsManagement()throws Exception;
	public List<BookDTO> selectScience()throws Exception;
	public List<BookDTO> selecttestPreparationBook()throws Exception;
	public List<BookDTO> selectcivilServant()throws Exception;
	public List<BookDTO> selectforeignLanguage()throws Exception;
	public List<BookDTO> selectSecondarySchoolReferenceBook()throws Exception;
	public List<BookDTO> selectElementarySchoolReferenceBook()throws Exception;
	public List<BookDTO> selectInternationalBook()throws Exception;
	public List<BookDTO> selectUsedBook()throws Exception;
	public List<BookDTO> selectEBook()throws Exception;
	public List<BookDTO> selectBestseller()throws Exception;
	public List<BookDTO> selectNewBook()throws Exception;
	
}
