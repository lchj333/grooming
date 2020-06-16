package com.grooming.control;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.grooming.dao.AfagDAO;
import com.grooming.dao.InquiryDAO;
import com.grooming.dto.AfagDTO;
import com.grooming.dto.InquiryDTO;
import com.grooming.dto.NoticeDTO;

@Controller
public class InquiryController {

	@Inject
	InquiryDAO dao;
	@Inject
	AfagDAO dao2;
	//문의사항(관리자) 전체 보기
//	@RequestMapping(value="inquiryAdminList")
//	public String inquiryAdminL     ist(Model model) {
//		List<InquiryDTO> list = dao.selectList();
//		model.addAttribute("list", list);
//		return "board/grooming_qnaboard_adminlist";
//	}
	
	//문의사항 전체보기+페이징추가(관리자)
	@RequestMapping(value="/inquiryAdminList")
	public String inquiryAdminList(Model model, HttpServletRequest req, RedirectAttributes rtt) {
		int num = 1;
		
		
		String n = req.getParameter("num");
		
		if(n!=null&&n!="") {
			num = Integer.parseInt(n);
		}
		
		//게시물 총 갯수
		int count = dao.count();
		// 한 페이지에 출력할 공지사항 숫자
		int postNum = 5;
		//하단 페이징 번호
		int pageNum = (int)Math.ceil((double)count/postNum);
		// 출력할 게시물
		int displayPost = (num-1)*postNum;
		
		// 한번에 표시할 페이징 번호의 갯수
		int pageNum_cnt = 5;
		
		// 표시되는 페이지 번호 중 마지막 번호
		int endPageNum = (int)(Math.ceil((double)num / (double)pageNum_cnt) * pageNum_cnt);
		
		// 표시되는 페이지 번호 중 첫번째 번호
		int startPageNum = endPageNum - (pageNum_cnt - 1);
		
		//마지막 번호 재계산
		int endPageNum_tmp = (int)(Math.ceil((double)count / (double)pageNum_cnt));		 
		if(endPageNum > endPageNum_tmp) endPageNum = endPageNum_tmp;
		
		boolean prev = startPageNum == 1 ? false : true;
		boolean next = endPageNum * pageNum_cnt >= count ? false : true;
		
		// 시작 및 끝 번호
		model.addAttribute("startPageNum", startPageNum);
		model.addAttribute("endPageNum", endPageNum);

		// 이전 및 다음
		model.addAttribute("prev", prev);
		model.addAttribute("next", next);
		
		List<InquiryDTO> list = dao.listPage(displayPost, postNum);			
		model.addAttribute("list", list);
		model.addAttribute("pageNum", pageNum);
					
		HttpSession ss = req.getSession();
		ss.setAttribute("in_num", rtt.getAttribute("in_num"));
		
		ss.setAttribute("pn", num);
		model.addAttribute("select", num);
		
		return "board/grooming_qnaboard_adminlist";
	}
	
	//문의사항(사용자) 전체 보기
	@RequestMapping(value="/inquiryCustomerList")
	public String inquiryCustomerList(Model model, HttpServletRequest req, RedirectAttributes rtt) {
		int num = 1;
		
		HttpSession ss = req.getSession();
		ss.setAttribute("in_num", rtt.getAttribute("in_num"));
		
		String n = req.getParameter("num");
		
		if(n!=null&&n!="") {
			num = Integer.parseInt(n);
		}
				
		//게시물 총 갯수
		int count = dao.count();
		// 한 페이지에 출력할 공지사항 숫자
		int postNum = 5;
		//하단 페이징 번호
		int pageNum = (int)Math.ceil((double)count/postNum);
		// 출력할 게시물
		int displayPost = (num-1)*postNum;
		
		// 한번에 표시할 페이징 번호의 갯수
		int pageNum_cnt = 5;
		
		// 표시되는 페이지 번호 중 마지막 번호
		int endPageNum = (int)(Math.ceil((double)num / (double)pageNum_cnt) * pageNum_cnt);
		
		// 표시되는 페이지 번호 중 첫번째 번호
		int startPageNum = endPageNum - (pageNum_cnt - 1);
		
		//마지막 번호 재계산
		int endPageNum_tmp = (int)(Math.ceil((double)count / (double)pageNum_cnt));		 
		if(endPageNum > endPageNum_tmp) endPageNum = endPageNum_tmp;
		
		boolean prev = startPageNum == 1 ? false : true;
		boolean next = endPageNum * pageNum_cnt >= count ? false : true;
		
		// 시작 및 끝 번호
		model.addAttribute("startPageNum", startPageNum);
		model.addAttribute("endPageNum", endPageNum);

		// 이전 및 다음
		model.addAttribute("prev", prev);
		model.addAttribute("next", next);
		
		List<InquiryDTO> list = dao.listPage(displayPost, postNum);			
		model.addAttribute("list", list);
		model.addAttribute("pageNum", pageNum);
		
		List<AfagDTO> list2 = dao2.selectAll();
		model.addAttribute("list2", list2);
		
		ss.setAttribute("pn", num);
		model.addAttribute("select", num);
		
		return "board/grooming_qnaboard_customer_list";
	}
	
	// 문의하기 detail
	@RequestMapping(value="inquiryDetail")
	public String inquiryDetail(@RequestParam(value="in_num")int in_num,
							@RequestParam(value="num")int num,
						HttpServletRequest req) {
		InquiryDTO dto = dao.selectOne(in_num);
		req.setAttribute("inform", dto);
		return "board/grooming_qnaboard_adminwrite";
	}
	
	// 문의작성페이지로 이동하기
	@GetMapping(value="/inquiryInsert")
	public String inquiryWrite(Model model) {
		return "board/grooming_qnaboard_customer_write";
	}
	
	// 문의 작성하기
	@PostMapping(value="/inquiryInsert")
	public String WriteOk(@ModelAttribute InquiryDTO dto) {
		dao.insertOne(dto);
		return "redirect:/inquiryCustomerList";
	}
	// 댓글 작성하기
	@PostMapping(value="/afagInsert")
	public String comment(@ModelAttribute AfagDTO afagdto) {
		dao2.insertOne(afagdto);
		return "redirect:/inquiryAdminList";
	}
	
	
	// 문의수정하기 페이지로이동
	@GetMapping(value="/inquiryUpdate")
	public String inquiryUpdate(@RequestParam(value="in_num")int in_num, Model model) {
		InquiryDTO dto = dao.selectOne(in_num);
		model.addAttribute("inform", dto);
		return "gr_inquiryboard_update";
	}	
	// 문의 수정하기
	@PostMapping(value="/inquiryUpdate")
	public String UpdateOk(@RequestParam(value="in_num")int in_num, Model model,
							@ModelAttribute InquiryDTO dto ) {
		dao.updateOne(dto);
		return "redirect:/inquiryList";
	}
	
	// 문의 삭제하기
	@RequestMapping(value="/inquiryDelete")
	public String inquiryDelete(@RequestParam(value="in_num")int in_num, Model model) {
		dao2.deleteOne(in_num);
		dao.deleteOne(in_num);
		return "redirect:/inquiryCustomerList";
	}	
}