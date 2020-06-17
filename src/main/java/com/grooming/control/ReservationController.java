package com.grooming.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.grooming.dao.ReservationDAO;
import com.grooming.dto.MemberDTO;
import com.grooming.dto.RegistrationDTO;
import com.grooming.dto.ReservationDTO;

@Controller
public class ReservationController {
	String[] spec = {"대형 ", "중형 ", "소형 "};
	
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
	
	//-> grooming_result_detail ->
	//예약 확인 폼 이동
	@PostMapping(value = "reservation/reservCk")
	public String reservCk(@RequestParam(value = "re_specie")String[] specie, ReservationDTO dto,
							@RequestParam(value = "de_licencenum")int num, HttpServletRequest req) {
		HttpSession hs = req.getSession();
		
		String species = "";
		for(int x=0; x<specie.length; x++) {
			if(!specie[x].equals("0")) {
				//입력
				species = species + spec[x] +specie[x];
				//칸 구분 ( | )
				if(x < 2 && !specie[x+1].equals("0")) { //x는 최대 2
					species = species + " | ";
				}//in
			}//out
			// ex : "대형 1 | 중형 2"
		}
		
		if(hs.getAttribute("login") != null) { //로그인 정보 있는지 확인
			//정보가 있을 경우
			String id = ((MemberDTO) hs.getAttribute("login")).getMb_id();
			dto.setMb_id(id);
			dto.setRe_species(species);
			
			//+ 샵 주소, 이름 넘기기
			RegistrationDTO rdto = rdao.getaddrBylnum(num);
			req.setAttribute("address", rdto.getReg_shopaddress());
			req.setAttribute("shopname", rdto.getRef_shopname());
			req.setAttribute("lnum", num);
			
			req.setAttribute("rsv", dto);
			
			//예약 체크 페이지 이동
			return "reservation/grooming_reservation_detail";
		}else {
			//정보가 없을 경우
			return "redirect:reload";
		}
	}
	//-> 예약  확인 페이지 ->
	//미용 예약 적용
	@PostMapping(value = "/reservation/addReserv")
	public String takeReserv(@RequestParam(value = "lnum")int lnum, HttpServletRequest req,
								@RequestParam(value = "dates")String dates, ReservationDTO dto,
								HttpServletResponse res, RedirectAttributes rtt) throws IOException, ParseException {
		HttpSession hs = req.getSession();
		MemberDTO mem = (MemberDTO) hs.getAttribute("login");
		
		//String to Date
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date re_date = transFormat.parse(dates);

		//실질적 DB저장
		dto.setMb_id(mem.getMb_id());
		dto.setDe_licencenum(lnum);
		dto.setRe_date(re_date);
		rdao.insertReserv(dto);
		
		//알림 팝업
		PrintWriter out = res.getWriter();
		out.println("<script>alert('예약 목록으로 이동합니다.');</script>");
		out.flush();
		
		//뒤로가기 방지
		rtt.addFlashAttribute("login", hs.getAttribute("login"));
		rtt.addFlashAttribute("dInfo", hs.getAttribute("dInfo"));
		
		//예약 리스트 이동 컨트롤
		return "redirect:goToBook";
	}
	//↕페이지 이동 -> 목록 페이지
	@RequestMapping("/goToBook")
	public String goToBook(RedirectAttributes rtt, HttpServletRequest req) {
		//세션 옮기기
		HttpSession hs = req.getSession();
		hs.setAttribute("login", req.getAttribute("login"));
		hs.setAttribute("dInfo", req.getAttribute("dInfo"));
		//예약 리스트 이동
		return "mypage/grooming_user_booking";
	}
	
	//사용자 미용 후기 작성 적용
	@PostMapping(value = "/writeReview")
	public String writeReviewForm() {
		
		
		return "mypage/grooming_user_review";
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

	
	/******************************
	 		유틸 메소드
	******************************/
	//미용사 여부 확인 메소드
	public boolean imCutter(HttpServletRequest req) {
		if(req.getAttribute("de_licencenum")!=null) {
			return true;
		}else return false;
	}
	
	
	// 사용자가 예약 정보 보는 페이지
	@RequestMapping(value="/myReservation")
	public String myReservation(HttpServletRequest req,
									ReservationDTO dto, Model model) {
		HttpSession hs = req.getSession();
		MemberDTO mem = (MemberDTO) hs.getAttribute("login");
		
		dto.setMb_id(mem.getMb_id());
		
		List<ReservationDTO> list = rdao.myReservation(dto);
		
		
		model.addAttribute("myList", list);

		
		return "mypage/grooming_user_booking";
	}
	
	// 미용사가 예약 정보 보는 페이지
	@RequestMapping(value= "/agreedReservation")
	public String agreedReservation(@RequestParam(value = "de_licencenum", required = false)String de_licencenum,
									ReservationDTO dto,Model model) {
		
		int num = Integer.parseInt(de_licencenum);
		
		dto.setDe_licencenum(num);
		
		List<ReservationDTO> list = rdao.agreedReservation(dto);
		
		model.addAttribute("myList", list); 
		
		
		return "mypage/grooming_hairdresser_approval";
	}
	
	//미용사 예약 승인 + 피드백
	@RequestMapping(value = "/appReservationY")
	public String appReservationY(@RequestParam(value = "re_num")int re_num,
									ReservationDTO dto) {
		
		System.out.println(re_num);
		
		dto.setRe_num(re_num);
		
		rdao.checkReservY(dto);
		
		return "mypage/grooming_user_profile";
	}
	
	//미용사 예약 승인 + 피드백
	@RequestMapping(value = "/appReservationN")
	public String appReservationN(@RequestParam(value = "re_num", required = false)int re_num,
								@RequestParam(value = "bc_con", required = false)String bc_con,
								ReservationDTO dto) {
		
		dto.setRe_num(re_num);
		dto.setBc_con(bc_con);
		
		rdao.checkReservN(dto);
		rdao.insertFeedBack(dto);
		
		return "mypage/grooming_user_profile";
	}
	
}
