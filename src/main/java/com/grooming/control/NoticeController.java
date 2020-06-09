package com.grooming.control;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

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
	@RequestMapping(value="/noticeList")
	public String noticeList(Model model) {
		List<NoticeDTO> list = noticedao.selectList();
		model.addAttribute("list", list);
		/* return "gr_noticeboard_list"; */
		return "board/grooming_noticeboard_list";
	}

	// 상세내용 보기
	@RequestMapping(value="/noticeDetail")
	public String noticeDetail(@RequestParam(value="nt_no")int nt_no, Model model) {
		noticedao.raiseHits(nt_no);
		NoticeDTO noticedto = noticedao.selectOne(nt_no);
		model.addAttribute("inform", noticedto);
		return "gr_noticeboard_detail";
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
}
