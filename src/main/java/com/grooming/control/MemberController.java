package com.grooming.control;


import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grooming.dao.MemberDAO;
import com.grooming.dto.MemberDTO;



@Controller
public class MemberController {
	@Inject
	MemberDAO dao;
	
	@RequestMapping(value = "/join")
	public String join(MemberDTO memberDto) {
		
		dao.joinMember(memberDto);
		
		return "home"; // 회원가입후 이동할 페이지
	}
	
	@RequestMapping(value = "/selectMemberAll")
	public String showList(Model model) {
		
		List<MemberDTO> list = dao.selectMemberAll();
		model.addAttribute("memberlist", list);
		
		return "list";
	}
	
	@RequestMapping(value = "/selectMemberOne")
	public String showOne(@RequestParam(value = "id", required = true)String id,Model model) {
		
		dao.selectOne(id);
		model.addAttribute("info", dao.selectOne(id));
		
		return "detail";
		
	}
}
