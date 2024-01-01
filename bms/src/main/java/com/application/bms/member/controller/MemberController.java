package com.application.bms.member.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
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
		jsScript+="location.href='"+request.getContextPath()+"/';";
		jsScript+="</script>";
		return jsScript;
	}
	
	@GetMapping("/loginMember")
	public ModelAndView loginMember() throws Exception {
		return new ModelAndView("/member/loginMember");
	}
	
	
	@PostMapping("/loginMember")
	@ResponseBody
	public String loginMember(MemberDTO memberDTO , HttpServletRequest request) throws Exception {
		
		String jsScript = "";
		if (memberService.loginMember(memberDTO) != null) {
			
			HttpSession session = request.getSession();
			session.setAttribute("memberId", memberDTO.getMemberId());
			
			jsScript += "<script>";
			jsScript += "alert('You are logged in.');";
			jsScript += "location.href='" + request.getContextPath() + "/'";
			jsScript += "</script>";
			System.out.println("Id : "+memberDTO.getMemberId());
			
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
	public String logoutMember(HttpServletRequest request) throws Exception{
		
		HttpSession session = request.getSession();
		session.invalidate();
		
		String jsScript = "<script>";
				jsScript += "alert('You are logged out.');";
				jsScript += "location.href='" + request.getContextPath() + "/'";
				jsScript += "</script>";
		
		return jsScript;
		
	}
	
	@PostMapping("/overlappedId")
	@ResponseBody
	public String overlapped(@RequestParam("memberId") String memberId) throws Exception{
		return memberService.checkOverlappedId(memberId);
	}
	
	@GetMapping("/detailMember")
	public ModelAndView detailMember(HttpServletRequest request) throws Exception {
	    HttpSession session = request.getSession();
	   
	    ModelAndView mv = new ModelAndView();
	   
	    mv.setViewName("/member/detailMember");
	    
	    mv.addObject("memberDTO" , memberService.getMemberDetail((String)session.getAttribute("memberId")));
	    return mv;
	}

	@GetMapping("/authentication")
	public ModelAndView authentication(HttpSession session,@RequestParam("memberId")String memberId, @RequestParam("menu")String menu) throws Exception {
		session.setAttribute("loggedInMemberId", memberId);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/member/authentication");
		mv.addObject("memberDTO", memberService.getMemberDetail(memberId));
		mv.addObject("menu", menu);
		return mv;
	}
	
	@PostMapping("/authentication")
	@ResponseBody
	public String authentication(HttpSession session,MemberDTO memberDTO, HttpServletRequest request, String menu) throws Exception {
		String jsScript="";
		 String loggedInMemberId = (String) session.getAttribute("loggedInMemberId");
		if(memberService.isAuthentication(memberDTO)) {
			if(menu.equals("update")) {
				jsScript+="<script>";
				//jsScript+="alert('passwd ok!');";
				jsScript+="location.href='"+request.getContextPath()+"/member/modifyMember?memberId=" + memberDTO.getMemberId() + "';";
				jsScript+="</script>";
				
			}
			else if(menu.equals("delete")) {
				jsScript+="<script>";
				jsScript+="location.href='"+request.getContextPath()+"/member/removeMember?memberId=" + memberDTO.getMemberId() + "';";
				jsScript+="</script>";
	
			}
		}
		else {
			jsScript+="<script>";
			jsScript+="alert('checky your passwd');";
			jsScript+="history.go(-1);";
			jsScript+="</script>";
		}
		return jsScript;
	}
	
	@GetMapping("/modifyMember")
	public ModelAndView modifyMember(@RequestParam("memberId")String memberId) throws Exception {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/member/modifyMember");
		mv.addObject("memberDTO", memberService.getMemberDetail(memberId));
		return mv;
	}
	
	@PostMapping("/modifyMember")
	@ResponseBody
	public String modifyMember(MemberDTO memberDTO, HttpServletRequest request) throws Exception {
		System.out.println(memberDTO);
		memberService.modifyMember(memberDTO);
		String jsScript="";
		HttpSession session=request.getSession();
		session.setAttribute("memberId", memberDTO.getMemberId());
		jsScript+="<script>";
		jsScript+="alert('Modification completed');";
		jsScript+="location.href='"+request.getContextPath()+"/';";
		jsScript+="</script>";
		return jsScript;
	}
	
	@GetMapping("/removeMember")
	public ModelAndView removeMember() throws Exception{
		return new ModelAndView("/member/removeMember");
	}
	
	@PostMapping("/removeMember")
	@ResponseBody
	public String removeMember(String memberId, HttpServletRequest request) throws Exception {
		String jsScript="";
		HttpSession session = request.getSession();
		session.invalidate();
		memberService.removeMember(memberId);
		jsScript+="<script>";
		jsScript+="alert('Withdrawa completed');";
		jsScript+="location.href='"+request.getContextPath()+"/';";
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
			String foundId=memberService.findMemberId(memberDTO);
			jsScript+="<script>";
			
			jsScript += "location.href='"+request.getContextPath()+"/member/IdFound?foundId="+foundId+"';";
			jsScript+="</script>";
		}
		return jsScript;
	}
	
	@GetMapping("/IdFound")
	public ModelAndView IdFound( @RequestParam("foundId")String foundId) throws Exception {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/member/IdFound");
		mv.addObject("foundId", foundId);
		return mv;
	}
	
	@GetMapping("/findPw")
	public ModelAndView findPw() {
		return new ModelAndView("/member/findPw");
	}
	
	@PostMapping("/findPw")
	@ResponseBody
	public String findPw(String memberId, HttpServletRequest request) throws Exception {
		String jsScript="";
		MemberDTO foundMember=memberService.findMemberPw(memberId);
		if(foundMember==null) {
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
			foundMember.setPasswd(PwFound);
	        memberService.modifyPw(foundMember);
	        
			jsScript+="<script>";
			jsScript += "location.href='"+request.getContextPath()+"/member/PwFound?PwFound="+PwFound+"';";
			jsScript+="</script>";
			
		}
		return jsScript;
	}
	
	@GetMapping("/PwFound")
	public ModelAndView PwFound( @RequestParam("PwFound")String PwFound) throws Exception {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/member/PwFound");
		mv.addObject("PwFound", PwFound);
		return mv;
	}
	
	@GetMapping("/memberList")
	public ModelAndView memberList(HttpServletRequest request)throws Exception{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/member/memberList");
		String searchKeyword = request.getParameter("searchKeyword");
		if (searchKeyword == null) searchKeyword = "total";
		
		String searchWord = request.getParameter("searchWord");
		if (searchWord == null) searchWord = "";
		
		mv.addObject("searchKeyword"     , searchKeyword);
		mv.addObject("searchWord"        , searchWord);
		Map<String, Object> searchMap = new HashMap<String, Object>();
		searchMap.put("searchKeyword"  , searchKeyword);
		searchMap.put("searchWord"     , searchWord);
		mv.addObject("memberList" , memberService.getMemberList(searchMap));
		
		return mv;
	}
	
	/*
	@GetMapping("/searchMemberList")
	@ResponseBody 
	public List<MemberDTO> searchMemberList(@RequestParam Map<String,String> searchMap) throws Exception {
		return memberService.getMemberSearchList(searchMap);
	}
	*/
}
