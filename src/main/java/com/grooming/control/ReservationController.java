package com.grooming.control;

import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.grooming.dao.ReservationDAO;
import com.grooming.dto.ReservationDTO;

@Controller
public class ReservationController {
	@Inject
	ReservationDAO rdao;
	
	/***********************************************
	  	사용자 입장
	***********************************************/
	//사용자 예약 목록
	@RequestMapping(value = "/reservList")
	public String listForCustomer(HttpServletRequest req) {
		String mb_id = (String) req.getAttribute("mb_id");//세션에서 사용자 이름
		
		ReservationDTO dto = new ReservationDTO();
		dto.setMb_id(mb_id);
		//예약 검색
		rdao.selectListByCustomer(dto);
		
		return "";
	}
	
	//예약 작성 폼으로 이동
	@GetMapping(value = "/reserv")
	public String ReservForm() {
		return "insertForm";
	}
	
	//사용자의 미용 예약 적용
	@PostMapping(value = "/reserv")
	public String takeReserv(ReservationDTO dto) {
		rdao.insertReserv(dto);
		
		//적용 후 메인으로~ 
		return "home";
	}
	
	//사용자 미용 후기 작성
	@RequestMapping(value = "/writeReview")
	public String writeReview() {
		return "";
	}
	
	/***********************************************
  		미용사 입장
	 ***********************************************/
	//예약 대기 목록
	@RequestMapping(value = "/listMyReserv")
	public String listForCutter(HttpServletRequest req) {
		Map<String, Object> map = null;
		
		//미용사인지 확인
		if(imCutter(req)) {
			map.put("type", "de_licencenum");
			map.put("data", (int) req.getAttribute("de_licencenum"));//세션에서 미용사 넘버
		}else {
			String id = (String) req.getAttribute("mb_id");//세션에서 현재 사용자 아이디
		}
		return "home";
	}
	
	//미용사 예약 승인 + 피드백
	@RequestMapping(value = "/yorn")
	public String yesOrNo(ReservationDTO dto) {
		//승인 체크 여부 <-- DAO 에서 처리
		//기본값상태로 넘어왓는지만 판별 [기본값 : U]
		if(!dto.getRe_approval().equalsIgnoreCase("U")) {
			//기본값이 아닐 경우 (상태 변경)
			rdao.checkReserv(dto);
			return "";
		}else {	//기본값인 상태
			System.out.println("잘못된 접근");
			return "";
		}
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
