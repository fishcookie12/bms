package com.application.bms.admin.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.application.bms.admin.dto.AdminDTO;
import com.application.bms.admin.service.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	private AdminService adminService;
	
	@GetMapping("/adminLog")
	public ModelAndView adminLog() throws Exception {
		return new ModelAndView("/admin/adminLog");
	}
	
	@PostMapping("/adminLog")
	@ResponseBody
	public String adminLog(AdminDTO adminDTO, HttpServletRequest request) throws Exception {
		String jsScript="";
		if(adminService.adminLog(adminDTO)!=null) {
			
			HttpSession session = request.getSession();
			session.setAttribute("adminId", adminDTO.getAdminId());
			
			jsScript += "<script>";
			jsScript += "alert('Admin Access.');";
			jsScript += "location.href='" + request.getContextPath() + "/'";
			jsScript += "</script>";
		}
	else {
				
				jsScript += "<script>";
				jsScript += "alert('check your Id or Password!');";
				jsScript += "history.go(-1);";
				jsScript += "</script>";
				
		}
		return jsScript;
	}
	
	@GetMapping("/logoutMember")
	@ResponseBody
	public String adminLogout(HttpServletRequest request) throws Exception{
		
		HttpSession session = request.getSession();
		session.invalidate();
		
		String jsScript = "<script>";
				jsScript += "alert('You are logged out.');";
				jsScript += "location.href='" + request.getContextPath() + "/'";
				jsScript += "</script>";
		
		return jsScript;
		
	}
}
