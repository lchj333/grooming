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

import com.grooming.dao.LoginDAO;
import com.grooming.dto.LoginDTO;
import com.grooming.dto.MemberDTO;
import com.grooming.service.SecurityService;

@Controller
public class LoginController {

	@Inject
	LoginDAO dao;
	
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String loginGet(@ModelAttribute("loginDto") LoginDTO loginDto) {
		return "loginForm";
	}
	
	
	@RequestMapping(value="login", method = RequestMethod.POST)
	public ModelAndView loginCheck(@ModelAttribute LoginDTO loginDto,HttpSession session, HttpServletRequest req) {
		SecurityService securityService = new SecurityService();
		String pw = req.getParameter("mb_pw");
		String mb_pw = securityService.encryptSHA256(pw);
		
		loginDto.setMb_pw(mb_pw);
		int check = dao.loginCheck(loginDto);
		ModelAndView mav = new ModelAndView();
		
		
		if(check ==1) {
			
			session.setAttribute("login", dao.loginOk(loginDto));
			
			System.out.println(dao.loginOk(loginDto));
			System.out.println(loginDto.getMb_pw());
			System.out.println(loginDto.getMb_id());
			mav.setViewName("loginOk");
		}else if (check == 0) {
			session.setAttribute("login", null);
			mav.setViewName("loginOk");
			
		}
		
		
		return mav;
	}
	

	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception{
		
		session.invalidate();
		
		return "login";
	}
	
}
