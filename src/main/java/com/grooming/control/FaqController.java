package com.grooming.control;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grooming.dao.FaqDAO;
import com.grooming.dto.FaqDTO;

@Controller
public class FaqController {
	
	@Inject
	FaqDAO faqdao;
	
	//자주묻는 질문(Faq) 전체조회
	@RequestMapping(value="/faqList")
	public String faqList(Model model) {
		List<FaqDTO> list = faqdao.selectList();
		model.addAttribute("list", list);
		return "gr_faqboard_list";
	}
	
	//상세내용 보기
	@RequestMapping(value="/faqDetail")
	public String faqDetail(@RequestParam(value="f_title")String f_title, Model model) {
		FaqDTO faqdto = faqdao.selectOne(f_title);
		model.addAttribute("inform", faqdto);
		return "gr_faqboard_detail";
	}
	
	//글 작성하기 페이지로 이동하기
	@GetMapping(value="/faqInsert")
	public String faqWrite(Model model) {
		return "gr_faqboard_insert";
	}
	// 글 작성하기
	@PostMapping(value="/faqInsert")
	public String WriteOk(@ModelAttribute FaqDTO faqdto) {
		faqdao.insertOne(faqdto);
		return "redirect:/faqList";
	}
	
	// 글 수정하기 페이지로 이동
	@GetMapping(value="faqUpdate")
	public String faqUpdate(@RequestParam(value="f_title")String f_title, Model model) {
		FaqDTO faqdto = faqdao.selectOne(f_title);
		model.addAttribute("inform", faqdto);
		return "gr_faqboard_update";
	}
	
	// 글 수정하기
	@PostMapping(value="faqUpdate")
	public String UpdateOk(@ModelAttribute FaqDTO faqdto,
						@RequestParam(value="f_title")String f_title, Model model) {
		faqdao.updateOne(faqdto);
		return "redirect:/faqList";
	}
	
	// 글 삭제하기
	@RequestMapping(value="faqDelete")
	public String faqDelete(@RequestParam(value="f_title")String f_title, Model model) {
		faqdao.deleteOne(f_title);
		return "redirect:/faqList";
	}
}
