package com.grooming.control;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.grooming.dao.DesignerDAO;
import com.grooming.dto.DesignerDTO;

@Controller
public class DesignerController {
	
	@Inject
	DesignerDAO dao;
	
	@RequestMapping(value = "/designer")
	public String designerJoin(DesignerDTO designerDto) {
		
		dao.joinDesigner(designerDto);
		
		return "home";
	}
	
	
}
