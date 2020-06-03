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
	
	@RequestMapping(value="/noticeList")
	public String noticeList(Model model) {
		List<NoticeDTO> list = noticedao.selectList();
		model.addAttribute("list", list);
		return "gr_noticeboard_list";
	}
	
	@GetMapping(value="/insert")
	public String noticeInsert(Model model) {
		return "gr_noticeboard_insert";
	}
	
	@PostMapping(value="/insert")
	public String noticeWrite(@ModelAttribute NoticeDTO noticedto) {
		noticedao.insertOne(noticedto);
		return "redirect:/noticeList";
	}
	
	@RequestMapping(value="/detail")
	public String noticeDetail(@RequestParam(value="nt_no")int nt_no, Model model) {
		NoticeDTO noticedto = noticedao.selectOne(nt_no);
		model.addAttribute("inform", noticedto);
		return "gr_noticeboard_detail";
	}
	
}
