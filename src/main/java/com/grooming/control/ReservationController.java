package com.grooming.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grooming.dao.ReservationDAO;
import com.grooming.dto.MemberDTO;
import com.grooming.dto.ReservationDTO;

@Controller
public class ReservationController {
	@Inject
	ReservationDAO rdao;

	/***********************************************
	  	사용자 입장
	***********************************************/
	//예약 작성은 샵 상세페이지에서 한번에 한다.
	//사용자 예약 목록
	@RequestMapping(value = "/mypage/reservList")
	public String listForCustomer(HttpServletRequest req) {
		String mb_id = (String) req.getAttribute("mb_id");//세션에서 사용자 이름
		
		ReservationDTO dto = new ReservationDTO();
		dto.setMb_id(mb_id);
		
		//예약 검색
		List<ReservationDTO> list = rdao.selectListByCustomer(dto);
		req.setAttribute("revs", list);
		
		return "/mypage/grooming_user_booking";
	}
	
	//사용자의 미용 예약 적용
	@PostMapping(value = "mypage/addReserv")
	public String takeReserv(ReservationDTO dto,
						HttpServletResponse res) throws IOException {
		
		rdao.insertReserv(dto);
		
		PrintWriter out = res.getWriter();
		out.println("<script>alert('예약 목록으로 이동합니다.');</script>");
		out.flush();
		
		//적용 후 목록으로~ 
		return "mypage/grooming_user_booking";
	}
	
	//사용자 미용 후기 작성 폼
	@GetMapping(value = "/writeReview")
	public String writeReviewForm() {
		return "mypage/grooming_user_review";
	}
	
//	@PostMapping(value = "/writeReview")
//	public String writeReviewReal(HttpServletRequest req) {
//		
//		return "home";
//	}
	
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
	@RequestMapping(value = "/appReservationY")
	public String appReservationY(@RequestParam(value = "re_num", required = false)String re_num,
							ReservationDTO dto) {
		
		int renum = Integer.parseInt(re_num);
		
		dto.setRe_num(renum);
		
		rdao.checkReservY(dto);
		
		return "mypage/grooming_user_profile";
	}
	
	//미용사 예약 승인 + 피드백
	@RequestMapping(value = "/appReservationN")
	public String appReservationN(@RequestParam(value = "re_num", required = false)String re_num,
			@RequestParam(value = "bc_con", required = false)String bc_con,
			ReservationDTO dto) {
		
		int renum = Integer.parseInt(re_num);
		dto.setRe_num(renum);
		dto.setBc_con(bc_con);
		
		rdao.checkReservN(dto);
		rdao.insertFeedBack(dto);
		
		return "mypage/grooming_user_profile";
	}
	
	//-> grooming_result_detail -> 예약확인(reserv) -> 예약완료 -> 예약 목록 페이지
	//예약 확인 폼
	@PostMapping(value = "reservCk")
	public String reservCk(ReservationDTO dto, HttpServletRequest req) {
		HttpSession hs = req.getSession();
		
		if(hs.getAttribute("login") != null) { //로그인 정보 있는지 확인
			//정보가 있을 경우
			req.setAttribute("rsv", dto);
			//예약 체크 페이지 이동
			return "";
		}else {
			//정보가 없을 경우
			return "redirect:rollback";
		}
	}
	
	//-> 예약  확인 페이지 ->
	//예약 적용
	
	/******************************
	 		유틸 메소드
	******************************/
	//미용사 여부 확인 메소드
	public boolean imCutter(HttpServletRequest req) {
		if(req.getAttribute("de_licencenum")!=null) {
			return true;
		}else return false;
	}
	
	
	// 내 예약 정보 보는 페이지
		@RequestMapping(value="/myReservation")
		public String myReservation(Model model) {
			
			List<ReservationDTO> myList = rdao.myReservation();
			
			model.addAttribute("myList", myList);
			
			
			return "mypage/grooming_user_booking";
		}
		
		// 내 예약 정보 보는 페이지
		@RequestMapping(value= "/agreedReservation")
		public String agreedReservation(Model model) {
			
			List<ReservationDTO> myList = rdao.myReservation();
			
			model.addAttribute("myList", myList);
			
			
			return "mypage/grooming_hairdresser_approval";
		}
	
}
