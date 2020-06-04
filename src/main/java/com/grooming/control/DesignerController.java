package com.grooming.control;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
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
	
	@RequestMapping(value = "/designerJoin")
	public String designerJoin(@ModelAttribute("mb_id") DesignerDTO designerDto) {
		
		dao.joinDesigner(designerDto);
		
		
		return "redirect:/selectMemberAll";
	}

}
