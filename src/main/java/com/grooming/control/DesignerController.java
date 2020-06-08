package com.grooming.control;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grooming.dao.DesignerDAO;
import com.grooming.dto.DesignerDTO;

@Controller
public class DesignerController {
	
	@Inject
	DesignerDAO dao;
	
	// 디자이너 시청하는 메소드
	@RequestMapping(value = "/designerJoin")
	public String designerJoin(@ModelAttribute("mb_id") DesignerDTO designerDto) {
		
		dao.joinDesigner(designerDto);
		
		
		return "redirect:/selectMemberAll";
	}
	
	// 디자이너 전체 조회
	@RequestMapping(value = "/designerList")
	public String designerList(Model model) {
		List<DesignerDTO> list = dao.selectDesignerAll();
		model.addAttribute("designerList", list);
		
		return "designerList";
	}
	
	// 디자이너 신청한 멤버 목록 받아오는 메소드
	@RequestMapping(value = "/designerApplication")
	public String designerApplication(Model model) {
		
		List<DesignerDTO> list = dao.designerApplication();
		model.addAttribute("designerApplication", list);
		
		return "designerApplication";
	}
	
	// 디자이너 de_approval 승인하는 메소드
	@RequestMapping(value = "designerAgree")
	public String designerAgree(@ModelAttribute("mb_id") DesignerDTO designerDto) {
		
		dao.designerAgree(designerDto);
		
		return "designerAgree";
	}
	

}
