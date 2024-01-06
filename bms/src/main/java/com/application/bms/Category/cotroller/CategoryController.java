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
	
}
