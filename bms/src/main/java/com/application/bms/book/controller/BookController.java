package com.application.bms.book.controller;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.application.bms.book.dto.BookDTO;
import com.application.bms.book.service.BookService;

import net.coobird.thumbnailator.Thumbnails;

@Controller
@RequestMapping("/book")
public class BookController {
	
	@Autowired
	private BookService bookService;
	
	private static final String FILE_REPO_PATH ="C:\\bms_book_file_repo\\"; //window
	//private static final String FILE_REPO_PATH ="/var/lib/tomcat9/file_repo/"; //linux

	@GetMapping("/addBook")
	public ModelAndView main() throws Exception {
		return new ModelAndView("/book/addBook");
	}
	
	@PostMapping("/addBook")
	@ResponseBody
	public String addBook(HttpServletRequest request, MultipartHttpServletRequest multipartRequest) throws Exception {
		
		String jsScript="";
		Iterator<String> fileList = multipartRequest.getFileNames();			
		String fileName = "";
		if (fileList.hasNext()) {												
			MultipartFile uploadFile = multipartRequest.getFile(fileList.next()); 
			if (!uploadFile.getOriginalFilename().isEmpty()) {
				SimpleDateFormat fmt = new SimpleDateFormat("yyyyMMdd");
				fileName = fmt.format(new Date()) + "_" + UUID.randomUUID() + "_" + uploadFile.getOriginalFilename();
				uploadFile.transferTo(new File(FILE_REPO_PATH + fileName)); 
			}
		
		}
		BookDTO bookDTO=new BookDTO();
	
		bookDTO.setBookNm(multipartRequest.getParameter("bookNm"));
		bookDTO.setWriter(multipartRequest.getParameter("writer"));
		bookDTO.setPrice(Integer.parseInt(multipartRequest.getParameter("price")));
		bookDTO.setDiscountRt(Integer.parseInt(multipartRequest.getParameter("discountRt")));
		bookDTO.setStock(Integer.parseInt(multipartRequest.getParameter("stock")));
		bookDTO.setPublisher(multipartRequest.getParameter("publisher"));
		bookDTO.setSort(multipartRequest.getParameter("sort"));
		bookDTO.setPoint(Integer.parseInt(multipartRequest.getParameter("point")));
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");       
		bookDTO.setPublishedDt(sdf.parse(multipartRequest.getParameter("publishedDt")));
		bookDTO.setTotalPage(Integer.parseInt(multipartRequest.getParameter("totalPage")));
		bookDTO.setIsbn(multipartRequest.getParameter("isbn"));
		bookDTO.setDeliveryPrice(Integer.parseInt(multipartRequest.getParameter("deliveryPrice")));
		bookDTO.setPart(multipartRequest.getParameter("part"));
		bookDTO.setWriterIntro(multipartRequest.getParameter("writerIntro"));
		bookDTO.setContentsOrder(multipartRequest.getParameter("contentsOrder"));
		bookDTO.setIntro(multipartRequest.getParameter("intro"));
		bookDTO.setPublisherComment(multipartRequest.getParameter("publisherComment"));
		bookDTO.setRecommendation(multipartRequest.getParameter("recommendation"));
		bookDTO.setImgNm(fileName);

		bookService.addBook(bookDTO);
		
		jsScript = "<script>";
		jsScript += "alert('Registration completed.');";
		jsScript += "location.href='" + request.getContextPath() + "/'";
		jsScript += "</script>";
		return jsScript;
	}
	
	@GetMapping("/thumbnails")
	public void thumbnails(@RequestParam("fileName") String fileName , HttpServletResponse response) throws Exception {
	
		OutputStream out = response.getOutputStream();
		String filePath = FILE_REPO_PATH + fileName;
		
		File image = new File(filePath);
		if (image.exists()) { 
			Thumbnails.of(image).size(800,800).outputFormat("png").toOutputStream(out);
		}
		byte[] buffer = new byte[1024 * 8];
		out.write(buffer);
		out.close();
		
	}

	@GetMapping("/bookList")
	public ModelAndView bookList(HttpServletRequest request) throws Exception {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/book/bookList");
		String searchOption = request.getParameter("searchOption");
		if (searchOption == null) searchOption = "total";
		
		String searchWord = request.getParameter("searchWord");
		if (searchWord == null) searchWord = "";
		Map<String, Object> searchMap = new HashMap<String, Object>();
		
		searchMap.put("searchOption"  , searchOption);
		searchMap.put("searchWord"     , searchWord);
		
		mv.addObject("bookList",  bookService.getBookList(searchMap));		
		return mv;
	}
	
	@GetMapping("/bookDetail")
	public ModelAndView bookDetail(@RequestParam("bookCd")int bookCd) throws Exception {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/book/bookDetail");
		mv.addObject("bookDTO", bookService.getBookDetail(bookCd));
		
		return mv;
	}
	
	@GetMapping("/modifyBook")
	public ModelAndView modifyBook(@RequestParam("bookCd")int bookCd) throws Exception {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/book/modifyBook");
		mv.addObject("bookDTO", bookService.getBookDetail(bookCd));
		
		return mv;
	}
	
	@PostMapping("/modifyBook")
	@ResponseBody
	public String modifyBook(HttpServletRequest request, MultipartHttpServletRequest multipartRequest) throws Exception {
		
		String jsScript="";
		Iterator<String> fileList = multipartRequest.getFileNames();			
		String fileName = "";
		if (fileList.hasNext()) {												
			MultipartFile uploadFile = multipartRequest.getFile(fileList.next()); 
			if (!uploadFile.getOriginalFilename().isEmpty()) {
				SimpleDateFormat fmt = new SimpleDateFormat("yyyyMMdd");
				fileName = fmt.format(new Date()) + "_" + UUID.randomUUID() + "_" + uploadFile.getOriginalFilename();
				uploadFile.transferTo(new File(FILE_REPO_PATH + fileName)); 
			}
		
		}
		
		BookDTO bookDTO=new BookDTO();
		bookDTO.setBookCd(Integer.parseInt(multipartRequest.getParameter("bookCd")));
		bookDTO.setPrice(Integer.parseInt(multipartRequest.getParameter("price")));
		bookDTO.setDiscountRt(Integer.parseInt(multipartRequest.getParameter("discountRt")));
		bookDTO.setStock(Integer.parseInt(multipartRequest.getParameter("stock")));
		bookDTO.setSort(multipartRequest.getParameter("sort"));
		bookDTO.setPoint(Integer.parseInt(multipartRequest.getParameter("point")));
		bookDTO.setTotalPage(Integer.parseInt(multipartRequest.getParameter("totalPage")));
		bookDTO.setIsbn(multipartRequest.getParameter("isbn"));
		bookDTO.setDeliveryPrice(Integer.parseInt(multipartRequest.getParameter("deliveryPrice")));
		bookDTO.setPart(multipartRequest.getParameter("part"));
		bookDTO.setImgNm(fileName);
		
		
		
		bookService.modifyBook(bookDTO);
		jsScript+="<script>;";
		jsScript += "alert('Modifications completed.');";
		jsScript += "location.href='" + request.getContextPath() + "/'";
		jsScript+="</script>;";
	
		return jsScript;
	}
	
	
	@GetMapping("/removeBook")
	public ModelAndView removeBook(@RequestParam("bookCd")int bookCd) {
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/book/removeBook");
		mv.addObject("bookCd", bookCd);
		
		return mv;
		
	}
	
	
	@PostMapping("/removeBook")
	@ResponseBody
	public String removeBook(HttpServletRequest request, int bookCd) throws Exception {
		bookService.removeBook(bookCd);
	
		String jsScript="";
		jsScript+="<script>;";
		jsScript += "alert('Deletion completed.');";
		jsScript += "location.href='" + request.getContextPath() + "/'";
		jsScript+="</script>;";
		
		return jsScript;
		
	}
	
	@GetMapping("/bookStock")
	public ModelAndView bookInventoryStatus(HttpServletRequest request) throws Exception {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/book/bookStock");
		String stockSearchkeywords = request.getParameter("stockSearchkeywords");
		if (stockSearchkeywords == null) stockSearchkeywords = "total";
		String stockSearchWords = request.getParameter("stockSearchWords");
		if (stockSearchWords == null) stockSearchWords = "";
		mv.addObject("stockSearchkeywords"     , stockSearchkeywords);
		mv.addObject("stockSearchWords"        , stockSearchWords);
		Map<String, Object> searchMap = new HashMap<String, Object>();
		
		searchMap.put("stockSearchkeywords"  , stockSearchkeywords);
		searchMap.put("stockSearchWords"     , stockSearchWords);
		
		mv.addObject("bookList",  bookService.bookStock(searchMap));	
		return mv;
	}
	
	
}
