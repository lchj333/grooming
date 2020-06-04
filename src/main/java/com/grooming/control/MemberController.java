package com.grooming.control;


import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grooming.dao.MemberDAO;
import com.grooming.dto.MemberDTO;
import com.grooming.service.SecurityService;



@Controller
public class MemberController {
	@Inject
	MemberDAO dao;
	
	
	@GetMapping(value = "/join")
	public String insertOk() {
		return "joinForm";
	}
	
	
	@PostMapping(value = "/join")
	public String join(MemberDTO memberDto, HttpServletRequest req) {
		
		
		
		SecurityService securityService = new SecurityService();
		
		//String securityPw = securityService.encryptSHA256(memberDto.getMb_pw());
		
		String mb_pw = req.getParameter("mb_pw");
		String securityPw = securityService.encryptSHA256(mb_pw);
		
		System.out.println(mb_pw);
		System.out.println(securityPw);
		
		memberDto.setMb_pw(securityPw);
		
		dao.joinMember(memberDto);
		
		return "home"; // 회원가입후 이동할 페이지
	}
	
	@RequestMapping(value = "/selectMemberAll")
	public String showList(Model model) {
		
		List<MemberDTO> list = dao.selectMemberAll();
		model.addAttribute("memberlist", list);
		
		return "member";
	}
	
	@RequestMapping(value = "/detail")
	public String showOne(@RequestParam(value = "mb_id", required = true)String mb_id,Model model) {
		MemberDTO dto = dao.selectOne(mb_id);
		
		model.addAttribute("info", dto);
		
		return "detail";
		
	}
	@RequestMapping(value = "/designerForm")
	public String showdeeigner(@RequestParam(value = "mb_id", required = true)String mb_id,Model model) {
		
		MemberDTO dto = dao.selectOne(mb_id);
		
		//System.out.println(dto);
		
		model.addAttribute("deinfo", dto);
		
		
		return "designerForm";
		
	}
	
	@RequestMapping(value = "/designerCheck")
	public String designerCheck(MemberDTO memberDto) {
		
		dao.designerCheck(memberDto);
		
		
		return "redirect:/selectMemberAll";
	}

	
}
