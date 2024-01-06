package com.application.bms.Category.cotroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.application.bms.Category.service.CategoryService;

@Controller
@RequestMapping("/category")
public class CategoryController {
	@Autowired
	private CategoryService categoryService;
	
	@GetMapping("/koreanNovel")
	public ModelAndView koreanNovel() throws Exception {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/category/koreanNovel");
		mv.addObject("bookList", categoryService.koreanNovelList());
		
		return mv;
	}
	
	@GetMapping("/englishNovel")
	public ModelAndView englishNovel() throws Exception {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/category/englishNovel");
		mv.addObject("bookList", categoryService.englishNovelList());
		
		return mv;
	}
	
	@GetMapping("/japanNovel")
	public ModelAndView japanNovel() throws Exception {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/category/japanNovel");
		mv.addObject("bookList", categoryService.japanNovelList());
		
		return mv;
	}
	
	@GetMapping("/europeanNovel")
	public ModelAndView europeanNovel() throws Exception {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/category/europeanNovel");
		mv.addObject("bookList", categoryService.europeanNovelList());
		
		return mv;
	}
	
	@GetMapping("/humanities")
	public ModelAndView humanities() throws Exception {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/category/humanities");
		mv.addObject("bookList", categoryService.humanitiesList());
		
		return mv;
	}
	
	@GetMapping("/poetryEssay")
	public ModelAndView poetryEssay() throws Exception {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/category/poetryEssay");
		mv.addObject("bookList", categoryService.poetryEssayList());
		
		return mv;
	}
	
	@GetMapping("/economicsManagement")
	public ModelAndView economicsManagement() throws Exception {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/category/economicsManagement");
		mv.addObject("bookList", categoryService.economicsManagementList());
		
		return mv;
	}
	
	@GetMapping("/science")
	public ModelAndView science() throws Exception {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/category/science");
		mv.addObject("bookList", categoryService.scienceList());
		
		return mv;
	}
	
	@GetMapping("/testPreparationBook")
	public ModelAndView testPreparationBook() throws Exception {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/category/testPreparationBook");
		mv.addObject("bookList", categoryService.testPreparationBookList());
		
		return mv;
	}
	
	@GetMapping("/civilServant")
	public ModelAndView civilServant() throws Exception {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/category/civilServant");
		mv.addObject("bookList", categoryService.civilServantList());
		
		return mv;
	}
	
	@GetMapping("/foreignLanguage")
	public ModelAndView foreignLanguage() throws Exception {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/category/foreignLanguage");
		mv.addObject("bookList", categoryService.foreignLanguageList());
		
		return mv;
	}
	
	@GetMapping("/secondarySchoolReferenceBook")
	public ModelAndView secondarySchoolReferenceBook() throws Exception {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/category/secondarySchoolReferenceBook");
		mv.addObject("bookList", categoryService.secondarySchoolReferenceBookList());
		
		return mv;
	}
	
	@GetMapping("/elementarySchoolReferenceBook")
	public ModelAndView elementarySchoolReferenceBook() throws Exception {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/category/elementarySchoolReferenceBook");
		mv.addObject("bookList", categoryService.elementarySchoolReferenceBookList());
		
		return mv;
	}
	
	@GetMapping("/internationalBook")
	public ModelAndView internationalBook() throws Exception {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/category/internationalBook");
		mv.addObject("bookList", categoryService.internationalBookList());
		
		return mv;
	}
	
	@GetMapping("/usedBook")
	public ModelAndView usedBook() throws Exception {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/category/usedBook");
		mv.addObject("bookList", categoryService.usedBookList());
		
		return mv;
	}
	
	@GetMapping("/eBook")
	public ModelAndView eBook() throws Exception {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/category/eBook");
		mv.addObject("bookList", categoryService.eBookList());
		
		return mv;
	}
	
	@GetMapping("/bestseller")
	public ModelAndView bestseller() throws Exception {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/category/bestseller");
		mv.addObject("bookList", categoryService.bestseller());
		
		return mv;
	}
	
	@GetMapping("/newBook")
	public ModelAndView newBook() throws Exception {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/category/newBook");
		mv.addObject("bookList", categoryService.newBook());
		
		return mv;
	}
	
}
