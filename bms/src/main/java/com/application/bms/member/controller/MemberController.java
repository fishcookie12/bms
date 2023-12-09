package com.application.bms.member.controller;

import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.application.bms.member.dto.MemberDTO;
import com.application.bms.member.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	@GetMapping("/addMember")
	public ModelAndView addMemeber() {
		return new ModelAndView("/member/addMember");
	}
	
	@PostMapping("/addMember")
	@ResponseBody
	public String addMember(MemberDTO memberDTO,HttpServletRequest request ) throws Exception {
		
		memberService.addMember(memberDTO);
		String jsScript="";
		jsScript+="<script>";
		jsScript+="alert('Registration Completed!');";
		jsScript+="location.href='"+request.getContextPath()+"/common/index';";
		jsScript+="</script>";
		return jsScript;
	}
	
	@GetMapping("/loginMember")
	public ModelAndView loginMember() {
		
		return new ModelAndView("/member/loginMember");
	}
	
	@PostMapping("/loginMember")
	@ResponseBody
	public String loginMember(MemberDTO memberDTO, HttpServletRequest request) throws Exception {
		String jsScript="";
		if(memberService.loginMember(memberDTO)!=null) {
			HttpSession session=request.getSession();
			session.setAttribute("memberId", memberDTO.getMemberId());
			jsScript+="<script>";
			jsScript+="alert('Login Successful');";
			jsScript+="location.href='"+request.getContextPath()+"/common/index';";
			jsScript+="</script>";
		}
		else {
			jsScript+="<script>";
			jsScript+="alert('check your Id or Passwd');";
			jsScript+="history.go(-1);";
			jsScript+="</script>";
		}
		
		return jsScript;
	}
	@PostMapping("/overlappedId")
	@ResponseBody
	public String overlapped(@RequestParam("memberId") String memberId) throws Exception{
		return memberService.checkOverlappedId(memberId);
	}
	
	@GetMapping("/detailMember")
	public ModelAndView detailMember(@RequestParam("memberId")String memberId) throws Exception {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/member/detailMember");
		mv.addObject("memberDTO", memberService.getMemberDetail(memberId));
		return mv;
	}
	
	@GetMapping("/modifyMember")
	public ModelAndView modifyMember() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/member/modifyMember");
		return mv;
	}
	
	@PostMapping("/modifyMember")
	@ResponseBody
	public String modifyMember(MemberDTO memberDTO, HttpServletRequest request) throws Exception {
		memberService.modifyMember(memberDTO);
		String jsScript="";
		HttpSession session=request.getSession();
		session.setAttribute("memberId", memberDTO.getMemberId());
		jsScript+="<script>";
		jsScript+="alert('Modification completed');";
		jsScript+="location.href='"+request.getContextPath()+"/common/index';";
		jsScript+="</script>";
		return jsScript;
	}
	
	@GetMapping("/findId")
	public ModelAndView findId() {
		return new ModelAndView("/member/findId");
	}
	
	
	@PostMapping("/findId")
	@ResponseBody
	public String findId(MemberDTO memberDTO, HttpServletRequest request) throws Exception {
		String jsScript="";
		if(memberService.findMemberId(memberDTO)==null) {
			jsScript+="<script>";
			jsScript+="alert('No matching member information found');";
			jsScript+="history.go(-1);";
			jsScript+="</script>";
		}
		else {
			String IdFound=memberService.findMemberId(memberDTO);
			jsScript+="<script>";
			jsScript += "location.href='" + request.getContextPath() + "/member/IdFound?IdFound=" + IdFound + "';";
			jsScript+="</script>";
		}
		return jsScript;
	}
	
	@GetMapping("/findPw")
	public ModelAndView findPw() {
		return new ModelAndView("/member/findPw");
	}
	
	@PostMapping("/findPw")
	@ResponseBody
	public String findPw(String memberId, HttpServletRequest request) throws Exception {
		String jsScript="";
		if(memberService.findMemberPw(memberId)==null) {
			jsScript+="<script>";
			jsScript+="alert('No matching member information found');";
			jsScript+="history.go(-1);";
			jsScript+="</script>";
		}
		else {
			Random ran=new Random();
			String PwFound="";
			String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
			int charnum=characters.length();
			for (int i = 0; i < 11; i++) {
				int rNum=ran.nextInt(characters.length());
				PwFound=PwFound+characters.charAt(rNum);
			}
			MemberDTO memberDTO=new MemberDTO();
			memberDTO.setPasswd(PwFound);
			jsScript+="<script>";
			jsScript += "location.href='" + request.getContextPath() + "/member/PwFound?PwFound=" + PwFound + "';";
			jsScript+="</script>";
			
		}
		return jsScript;
	}
}
