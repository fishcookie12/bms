package com.application.bms.contact.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

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
		System.out.println(contactDTO);
		jsScript+="location.href='"+request.getContextPath()+"/';";
		jsScript+="</script>";
		return jsScript;
	}
	
	@GetMapping("/contactList")
	public ModelAndView boardList() throws Exception{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("contact/contactList");
		mv.addObject("contactList", contactService.contactList());
		return mv;
	}
}
