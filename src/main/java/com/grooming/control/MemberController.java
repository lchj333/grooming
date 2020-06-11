package com.grooming.control;


import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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
		return "grooming_register_form";
	}
	
	
	// 회원가입 POST
	@PostMapping(value = "/join")
	public String join(MemberDTO memberDto, HttpServletRequest req) {
		
		
		
		SecurityService securityService = new SecurityService();
		
		String mb_pw = req.getParameter("mb_pw");
		String securityPw = securityService.encryptSHA256(mb_pw);
		
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
		model.addAttribute("testId", mb_id);
		
		System.out.println(dto);
		
		return "grooming_register_form";
	}

	
	// 아이디 찾기 페이지 들어오기
	@RequestMapping(value = "mb_id_find")
	public String idFind(@RequestParam(value = "mb_name", required = false)String mb_name,
						@RequestParam(value = "mb_email", required = false)String mb_email,
						Model model) {
		
		model.addAttribute("name", mb_name);
		model.addAttribute("email", mb_email);
		
		
		return "grooming_login_id_find_form";
	}
	
	// 아이디찾기 
	@RequestMapping(value = "mb_id_findOk")
	public String idFind1(@RequestParam(value = "mb_name", required = false)String mb_name,
						 @RequestParam(value = "mb_email", required = false)String mb_email,
						 Model model) {
		MemberDTO dd = new MemberDTO();
		dd.setMb_email(mb_email);
		dd.setMb_name(mb_name);
		
		System.out.println(mb_email);
		System.out.println(mb_name);
		
		MemberDTO dto = dao.idFind(dd);
		model.addAttribute("idFind", dto);
		
		System.out.println(dto);
		
		
		
		return "grooming_login_id_find_step2_form";
	}
	
	// 비밀번호 찾기 페이지 들어오기
		@RequestMapping(value = "mb_pw_find")
		public String idPw(@RequestParam(value = "mb_id", required = false)String mb_id,
							@RequestParam(value = "mb_email", required = false)String mb_email,
							Model model) {
			
			model.addAttribute("name", mb_id);
			model.addAttribute("email", mb_email);
			
			
			return "grooming_login_pw_find_form";
		}
	
	
	// 비밀번호 찾기
	@RequestMapping(value = "mb_pw_findOk")
	public String idPw1(@RequestParam(value = "mb_id", required = false)String mb_id,
					   @RequestParam(value = "mb_email", required = false)String mb_email,
					   Model model) {
		
		MemberDTO dd = new MemberDTO();
		
		dd.setMb_id(mb_id);
		dd.setMb_email(mb_email);
		
		
		System.out.println(mb_email);
		System.out.println(mb_id);
		
		MemberDTO dto = dao.pwFind(dd);
		
		model.addAttribute("pwFind", dto);
		
		System.out.println(dto);
		
		return "grooming_login_pw_find_step2_form";
	}
	
	
	
	// 비밀번호 체크
	@RequestMapping(value = "checkPw")
	public String checkPw(HttpServletRequest req,
							Model model,MemberDTO memberDto) {
		

		SecurityService securityService = new SecurityService();
		
		String mb_id = req.getParameter("mb_id");
		String mb_pw = req.getParameter("mb_pw");
		String securityPw = securityService.encryptSHA256(mb_pw);
		
		memberDto.setMb_pw(securityPw);
		
		int dto = dao.checkPw(memberDto);
		
		model.addAttribute("checkPw", dto);
		System.out.println(dto);
		System.out.println(securityPw);
		
		return "checkPw";
		
	}
	
	// 비밀번호 변경
	@RequestMapping(value = "changePw")
	public String changePw(@RequestParam(value = "mb_id", required = false)String mb_id,
							@RequestParam(value = "mb_pw", required = false)String mb_pw,
							Model model) {
		
		MemberDTO dd = new MemberDTO();
		
		
		SecurityService securityService = new SecurityService();
		
		dd.setMb_id(mb_id);
		
		dd.setMb_pw(securityService.encryptSHA256(mb_pw));
		
		System.out.println(mb_pw);
		
		System.out.println(dd.getMb_id());
		System.out.println(dd.getMb_pw());
		
		dao.changePw(dd);
		
		return "redirect:/mypage";
		
	}
	
	// 이메일 체크
	@RequestMapping(value = "checkEmail")
	public String checkEmail(HttpServletRequest req,
			Model model,MemberDTO memberDto) {
		
		String mb_id = req.getParameter("mb_id");
		String mb_email = req.getParameter("mb_email");
		
		int dto = dao.checkEmail(memberDto);
		
		model.addAttribute("checkEmail", dto);
		
		return "/mypage/grooming_user_profile";
		
	}
	
	// 기본정보 수정
	@RequestMapping(value = "changeInfo")
	public String changeInfo(@RequestParam(value = "mb_id")String mb_id,
							 @RequestParam(value = "mb_phone")String mb_phone,
							 @RequestParam(value = "mb_address1")String mb_address1,
							 @RequestParam(value = "mb_address2")String mb_address2,
			Model model,MemberDTO memberDto) {
		
		memberDto.setMb_phone(mb_phone);
		memberDto.setMb_address1(mb_address1);
		memberDto.setMb_address2(mb_address2);
		
		dao.changeInfo(memberDto);
		
		return "redirect:/mypage";
		
	}
	
	// 이메일 변경
	@RequestMapping(value = "changeEmail")
	public String changeEmail(@RequestParam(value = "mb_id", required = false)String mb_id,
							  @RequestParam(value = "mb_email", required = false)String mb_email,
							Model model,MemberDTO memberDto) {
		
		MemberDTO dd = new MemberDTO();
		dd.setMb_id(mb_id);
		dd.setMb_email(mb_email);
		
		System.out.println(mb_id);
		dao.changeEmail(dd);
		
		return "redirect:/mypage";
		
	}
	
	
	// 마이페이지 접속 
	@RequestMapping(value = "mypage")
	public String myPage() {
		return "/mypage/grooming_user_profile";
	}
	
}
