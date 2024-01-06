package com.application.bms.contact.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.application.bms.cart.dto.CartDTO;
import com.application.bms.contact.dto.ContactDTO;
import com.application.bms.contact.service.ContactService;

@Controller
@RequestMapping("/contact")
public class ContactController {
	@Autowired
	private ContactService contactService;
	
	@GetMapping("/addContact")
	public ModelAndView adminLog() throws Exception {
		return new ModelAndView("/contact/addContact");
	}
	
	@PostMapping("/addContact")
	@ResponseBody
	public String addContact(ContactDTO contactDTO, HttpServletRequest request) throws Exception {
		String jsScript="";
		contactService.addContact(contactDTO);
		jsScript+="<script>";
		jsScript+="alert('Registration complete!');";
		jsScript+="location.href='"+request.getContextPath()+"/';";
		jsScript+="</script>";
		return jsScript;
	}
	
	@GetMapping("/contactList")
	public ModelAndView contactList(HttpServletRequest request) throws Exception{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/contact/contactList");
		String searchQuery = request.getParameter("searchQuery");
		if (searchQuery == null) searchQuery = "total";
		
		String searchTerm = request.getParameter("searchTerm");
		if (searchTerm == null) searchTerm = "";
		
		mv.addObject("searchQuery", searchQuery);
		mv.addObject("searchTerm", searchTerm);
		
		Map<String, Object> searchMap = new HashMap<String, Object>();
		searchMap.put("searchQuery", searchQuery);
		searchMap.put("searchTerm", searchTerm);
		mv.addObject("contactList", contactService.contactList(searchMap));
		
		return mv;
	}
	
	@GetMapping("/contactDetail")
	public ModelAndView modifyContact(@RequestParam("contactCd")int contactCd) throws Exception {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/contact/contactDetail");
		mv.addObject("contactDTO", contactService.contactDetail(contactCd));
		return mv;
	}
	
	@PostMapping("/modifyContact")
	public ResponseEntity<Object> modifyContact(ContactDTO contactDTO, HttpServletRequest request) throws Exception {
		contactService.modifyContact(contactDTO);
		return new ResponseEntity<Object>(HttpStatus.OK);
	}
}
