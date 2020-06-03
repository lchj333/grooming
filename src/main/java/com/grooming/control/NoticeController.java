package com.grooming.control;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	
	
	
	
}
