package com.grooming.control;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
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
	@RequestMapping(value="/detail")
	public String faqDetail(@RequestParam(value="f_title")String f_title, Model model) {
		FaqDTO faqdto = faqdao.selectOne(f_title);
		model.addAttribute("inform", faqdto);
		return "gr_faqboard_detail";
	}
	
	//글 작성하기 페이지로 이동하기
	@GetMapping(value="/insert")
	public String faqWrite(Model model) {
		return "gr_faqboard_insert";
	}
	//계속작업하긔
	
	
}
