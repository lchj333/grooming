package com.grooming.control;


import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
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
	
	
	// 회원가입 GET
	@GetMapping(value = "/join")
	public String insertOk() {
		return "joinForm";
	}
	
	
	// 회원가입 POST
	@PostMapping(value = "/join")
	public String join(MemberDTO memberDto, HttpServletRequest req) {
		
		
		
		SecurityService securityService = new SecurityService();
		
		String mb_pw = req.getParameter("mb_pw");
		String securityPw = securityService.encryptSHA256(mb_pw);
		
		System.out.println(mb_pw);
		System.out.println(securityPw);
		
		memberDto.setMb_pw(securityPw);
		
		dao.joinMember(memberDto);
		
		return "home"; // 회원가입후 이동할 페이지
	}
	
	// 회원 전체 조회
	@RequestMapping(value = "/selectMemberAll")
	public String showList(Model model) {
		
		List<MemberDTO> list = dao.selectMemberAll();
		model.addAttribute("memberlist", list);
		
		return "member";
	}
	
	// 회원 개별 조회
	@RequestMapping(value = "/detail")
	public String showOne(@RequestParam(value = "mb_id", required = true)String mb_id,Model model) {
		MemberDTO dto = dao.selectOne(mb_id);
		
		model.addAttribute("info", dto);
		
		return "detail";
		
	}
	
	// 디자이너 신청 양식
	@RequestMapping(value = "/designerForm")
	public String showdeeigner(@RequestParam(value = "mb_id", required = true)String mb_id,Model model) {
		
		MemberDTO dto = dao.selectOne(mb_id);
		
		//System.out.println(dto);
		
		model.addAttribute("deinfo", dto);
		
		
		return "designerForm";
		
	}
	
	// 디자이너로 바꿔주는 메소드
	@RequestMapping(value = "/designerCheck")
	public String designerCheck(MemberDTO memberDto) {
		
		dao.designerCheck(memberDto);
		
		
		return "redirect:/selectMemberAll";
	}

    // 아이디 중복확인
	@RequestMapping(value = "/mb_id_check")
	public String idCheck(@RequestParam(value = "mb_id", required = false)String mb_id,Model model) {
		int dto = dao.idCheck(mb_id);
		
		model.addAttribute("idCheck", dto);
		
		System.out.println(dto);
		
		return "mb_id_check";
	}
	
	// 아이디 찾기
	@RequestMapping(value = "/mb_id_find")
	public String idFind(@RequestParam(value = "mb_name", required = false)String mb_id,
						 @RequestParam(value = "mb_email", required = false)String mb_email,
						 Model model, MemberDTO memberDto) {
		int dto = dao.idFind(memberDto);
		
		model.addAttribute("idFind", dto);
		
		System.out.println(dto);
		
		return "mb_id_find";
	}
	
	// 비밀번호 찾기
	@RequestMapping(value = "/mb_pw_find")
	public String idPw(@RequestParam(value = "mb_id", required = false)String mb_id,
					   @RequestParam(value = "mb_email", required = false)String mb_email,
					   Model model, MemberDTO memberDto) {
		int dto = dao.idPw(memberDto);
		
		model.addAttribute("idPw", dto);
		
		System.out.println(dto);
		
		return "mb_pw_find";
	}
	
	// 비밀번호 체크
	@RequestMapping(value = "checkPw")
	public String checkPw(@RequestParam(value = "mb_id", required = false)String mb_id,
							Model model,MemberDTO memberDto) {
		
		String dto = dao.checkPw(memberDto);
		
		model.addAttribute("checkPw", dto);
		
		return "checkPw";
		
	}
	
	// 비밀번호 변경
	@RequestMapping(value = "changePw")
	public String changePw(HttpServletRequest req, Model model,MemberDTO memberDto) {
		SecurityService securityService = new SecurityService();
		
		String mb_pw = req.getParameter("mb_pw");
		String securityPw = securityService.encryptSHA256(mb_pw);
		
		memberDto.setMb_pw(securityPw);
		
		dao.changePw(memberDto);
		
		return "changePw";
		
	}
	
	// 이메일 체크
	@RequestMapping(value = "checkEmail")
	public String checkEmail(@RequestParam(value = "mb_email")String mb_email,
			Model model,MemberDTO memberDto) {
		
		MemberDTO dto = dao.checkEmail(memberDto);
		
		model.addAttribute("checkEmail", dto);
		
		return "checkEmail";
		
	}
	
	// 이메일 변경
	@RequestMapping(value = "changeEmail")
	public String changeEmail(@RequestParam(value = "mb_email")String mb_email,
							Model model,MemberDTO memberDto) {
		
		dao.changeEmail(memberDto);
		
		return "changePw";
		
	}
	
	
}
