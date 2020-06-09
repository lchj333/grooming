package com.grooming.control;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grooming.dao.InquiryDAO;
import com.grooming.dto.InquiryDTO;

@Controller
public class InquiryController {

	@Inject
	InquiryDAO dao;
	//문의사항 전체 보기
	@RequestMapping(value="inquiryList")
	public String inquiryList(Model model) {
		List<InquiryDTO> list = dao.selectList();
		model.addAttribute("list", list);
		return "gr_inquiryboard_list";
	}
	
	// 문의하기 detail
	@RequestMapping(value="inquiryDetail")
	public String inquiryDetail(@RequestParam(value="in_num")int in_num, Model model) {
		InquiryDTO dto = dao.selectOne(in_num);
		model.addAttribute("inform", dto);
		return "gr_inquiryboard_detail";
	}
	// 문의작성페이지로 이동하기
	@GetMapping(value="/inquiryInsert")
	public String inquiryWrite(Model model) {
		return "gr_inquiryboard_insert";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
