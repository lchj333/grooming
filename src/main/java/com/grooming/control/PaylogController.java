package com.grooming.control;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grooming.dao.PaylogDAO;
import com.grooming.dto.PaylogDTO;

@Controller
public class PaylogController {

	@Inject
	PaylogDAO dao;
	
	//리스트 출렵 메소드
	@RequestMapping(value = "mypage/selectpayed")
	public String searchPayList() {
		return "searchListiPayed";
	}
	
	@PostMapping(value = "mypage/searchListList")
	public String paylistselect(@RequestParam("licence")int li, Model m, PaylogDTO dto) {
		dto.setDe_licencenum(li);
		List<PaylogDTO> plist = dao.selectAllIPayed(dto);
		m.addAttribute("plist", plist);
		
		return "mypage/grooming_hairdresser_chargingDetails";
	}
	
}
