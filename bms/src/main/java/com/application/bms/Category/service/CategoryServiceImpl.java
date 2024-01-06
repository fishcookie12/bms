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

	@Override
	public List<BookDTO> japanNovelList() throws Exception {
		
		return categoryDAO.selectJapanNovel();
	}

	@Override
	public List<BookDTO> europeanNovelList() throws Exception {
		
		return categoryDAO.selectEuropeanNovel();
	}
	
	@Override
	public List<BookDTO> humanitiesList() throws Exception {
		
		return categoryDAO.selectHumanities();
	}

	@Override
	public List<BookDTO> poetryEssayList() throws Exception {
		
		return categoryDAO.selectPoetryEssay();
	}

	@Override
	public List<BookDTO> economicsManagementList() throws Exception {
		
		return categoryDAO.selectEconomicsManagement();
	}

	@Override
	public List<BookDTO> scienceList() throws Exception {
		
		return categoryDAO.selectScience();
	}

	@Override
	public List<BookDTO> testPreparationBookList() throws Exception {
		
		return categoryDAO.selecttestPreparationBook();
	}

	@Override
	public List<BookDTO> civilServantList() throws Exception {
		
		return categoryDAO.selectcivilServant();
	}

	@Override
	public List<BookDTO> foreignLanguageList() throws Exception {
		
		return categoryDAO.selectforeignLanguage();
	}

	@Override
	public List<BookDTO> secondarySchoolReferenceBookList() throws Exception {
		
		return categoryDAO.selectSecondarySchoolReferenceBook();
	}

	@Override
	public List<BookDTO> elementarySchoolReferenceBookList() throws Exception {
		
		return categoryDAO.selectElementarySchoolReferenceBook();
	}

	@Override
	public List<BookDTO> internationalBookList() throws Exception {
		
		return categoryDAO.selectInternationalBook();
	}

	@Override
	public List<BookDTO> usedBookList() throws Exception {
		
		return categoryDAO.selectUsedBook();
	}

	@Override
	public List<BookDTO> eBookList() throws Exception {
		
		return categoryDAO.selectEBook();
	}

	@Override
	public List<BookDTO> bestseller() throws Exception {
		
		return categoryDAO.selectBestseller();
	}

	@Override
	public List<BookDTO> newBook() throws Exception {
		
		return categoryDAO.selectNewBook();
	}

	
}
