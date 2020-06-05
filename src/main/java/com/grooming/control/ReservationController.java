package com.grooming.control;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.grooming.dao.ReservationDAO;

@Controller
public class ReservationController {
	@Inject
	ReservationDAO rdao;
	
	//사용자의 미용 예약
	@RequestMapping(value = "/reserv")
	public String reserv() {
		return "";
	}
	
	//미용사 예약 승인 + 피드백
	@RequestMapping(value = "/yorn")
	public String yesOrNo() {
		return "";
	}
	
	//사용자 미용 후기
	@RequestMapping(value = "/writeReview")
	public String writeReview() {
		return "";
	}
	
	//미용사 예약 대기 목록
	@RequestMapping(value = "/listForCutter")
	public String listForCutter(HttpServletRequest req) {
		//미용사인지 확인
		if(imCutter(req)) {
			String name = (String) req.getAttribute("de_licencenum");//세션에서 미용사 이름
		}
		return "";
	}
	
	//사용자 예약 목록
	@RequestMapping(value = "/listForCustomer")
	public String listForCustomer(HttpServletRequest req) {
		String MB_ID = (String) req.getAttribute("MB_ID");//세션에서 사용자 이름
		
		//예약 검색
//		rdao.selec
		
		return "";
	}
	
	/******************************
	 		유틸 메소드
	******************************/
	//미용사 여부 확인 메소드
	public boolean imCutter(HttpServletRequest req) {
		if(req.getAttribute("de_licencenum")!=null) {
			return true;
		}else return false;
	}
	
}
