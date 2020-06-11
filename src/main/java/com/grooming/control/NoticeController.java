package com.grooming.control;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grooming.dao.NoticeDAO;
import com.grooming.dto.NoticeDTO;

@Controller
public class NoticeController {
	
	@Inject
	NoticeDAO noticedao;
	
	//공지사항 전체보기
//	@RequestMapping(value="/noticeList")
//	public String noticeList(Model model) {
//		List<NoticeDTO> list = noticedao.selectList();
//		model.addAttribute("list", list);
//		return "gr_noticeboard_list";
//		//return "board/grooming_noticeboard_list";
//	}

	// 상세내용 보기
	@RequestMapping(value="/noticeDetail")
	public String noticeDetail(@RequestParam(value="nt_no")int nt_no,
								@RequestParam(value="num")int num,
								HttpServletRequest req) {
		noticedao.raiseHits(nt_no);
		NoticeDTO noticedto = noticedao.selectOne(nt_no);
		req.setAttribute("inform", noticedto);
		
		HttpSession ses = req.getSession();
		//ses.setAttribute("num", 현재페이지값이있는객체);
		
		return "board/grooming_noticeboard_list";
	}
	 
	//글 작성 페이지로 이동
	@GetMapping(value="/noticeInsert")
	public String noticeWrite(Model model) {
		return "gr_noticeboard_insert";
	}
	//글 작성하기
	@PostMapping(value="/noticeInsert")
	public String WriteOk(@ModelAttribute NoticeDTO noticedto) {
		noticedao.insertOne(noticedto);
		return "redirect:/noticeList";
	}
	
	// 글 수정페이지로 이동
	@GetMapping(value="/noticeUpdate")
	public String noticeUpdate(@RequestParam(value="nt_no")int nt_no, Model model) {
		NoticeDTO noticedto = noticedao.selectOne(nt_no);
		model.addAttribute("inform", noticedto);
		return "gr_noticeboard_update";
	}
	//글 수정하기
	@PostMapping(value="/noticeUpdate")
	public String UpdateOk(@RequestParam(value="nt_no")int nt_no, Model model,
							@ModelAttribute NoticeDTO noticedto) {
		noticedao.updateOne(noticedto);
		return "redirect:/noticeList";
	}
	
	// 글 삭제하기
	@RequestMapping(value="/noticeDelete")
	public String noticeDelete(@RequestParam(value="nt_no")int nt_no, Model model) {
		noticedao.deleteOne(nt_no);
		return "redirect:/noticeList";
	}
	
	//공지사항 전체보기+페이징추가
	@RequestMapping(value="/noticeListPage")
	public String noticeListPage(Model model, HttpServletRequest req) {
		int num = 1;
		
		String n = req.getParameter("num");
		
		if(n!=null&&n!="") {
			num = Integer.parseInt(n);
		}
		
		//게시물 총 갯수
		int count = noticedao.count();
		// 한 페이지에 출력할 공지사항 숫자
		int postNum = 10;
		//하단 페이징 번호
		int pageNum = (int)Math.ceil((double)count/postNum);
		// 출력할 게시물
		int displayPost = (num-1)*postNum;
		
		// 한번에 표시할 페이징 번호의 갯수
		int pageNum_cnt = 10;
		
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
		
		List<NoticeDTO> list = noticedao.listPage(displayPost, postNum);			
		model.addAttribute("list", list);
		model.addAttribute("pageNum", pageNum);
		
		HttpSession ss = req.getSession();
		ss.setAttribute("pn", num);
		model.addAttribute("select", num);
		
		return "board/grooming_noticeboard_list";
		//return "board/grooming_noticeboard_list"; 
	}
	
}
