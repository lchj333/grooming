package com.grooming.control;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.grooming.dao.AdminDAO;
import com.grooming.dao.DesignerDAO;
import com.grooming.dao.LoginDAO;
import com.grooming.dto.AdminDTO;
import com.grooming.dto.DesignerDTO;
import com.grooming.dto.LoginDTO;
import com.grooming.dto.MemberDTO;
import com.grooming.service.SecurityService;

@Controller
public class LoginController {

	@Inject
	LoginDAO dao;
	@Inject
	DesignerDAO dd;
	@Inject
	AdminDAO ad;
	
	@RequestMapping(value={ "/login", "/adlogin" }, method = RequestMethod.GET)
	public String loginGet(@ModelAttribute("loginDto") MemberDTO memberDto,
						   @ModelAttribute("adminDto") AdminDTO adminDto) {
		return "loginForm";
	}
	
	
	@RequestMapping(value={ "/login", "/adlogin" }, method = RequestMethod.POST)
	public ModelAndView loginCheck(@ModelAttribute MemberDTO memberDto, 
								   @ModelAttribute DesignerDTO designerDto,
								   @ModelAttribute AdminDTO adminDto,
								   HttpSession session, HttpServletRequest req) {
		
		SecurityService securityService = new SecurityService();
		
		String mb_id = req.getParameter("mb_id");
		String pw = req.getParameter("mb_pw");
		
		adminDto.setAd_id(mb_id);
		adminDto.setAd_pw(pw);
		
		String mb_pw = securityService.encryptSHA256(pw);
		
		
		memberDto.setMb_pw(mb_pw);
		designerDto.setMb_id(mb_id);
		
		
		int check = dao.loginCheck(memberDto);
		int adcheck = ad.adminCheck(adminDto);
		
		ModelAndView mav = new ModelAndView();
		
		
		if(check ==1) {
			
			session.setAttribute("login", dao.loginOk(memberDto));
			session.setAttribute("dInfo", dd.designerInfo(designerDto));
			
			
			mav.setViewName("/mypage/mypage_nav");
			mav.setViewName("/mypage/grooming_user_profile");
		}else if (check == 0 || adcheck == 0) {
			
			
			session.setAttribute("login", null);
			mav.setViewName("redirect:/login");
			
		}
		
		if(adcheck == 1 ) {
			
			session.setAttribute("admin", ad.adminloginOk(adminDto));
			
			mav.setViewName("home");
			
		}
		
		
		return mav;
	}
	

	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception{
		
		session.invalidate();
		
		return "loginForm";
	}
	
}
