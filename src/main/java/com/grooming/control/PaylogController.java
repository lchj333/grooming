package com.grooming.control;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.grooming.dao.PaylogDAO;
import com.grooming.dto.DesignerDTO;
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
	
	//@RequestParam("licence")int li
	@RequestMapping(value = "mypage/searchPayList", method = {RequestMethod.GET, RequestMethod.POST})
	public String paylistselect(HttpServletRequest req, Model m, PaylogDTO dto) {
		HttpSession ss = req.getSession();
		DesignerDTO ddto = (DesignerDTO) ss.getAttribute("dInfo");
		
		dto.setDe_licencenum(ddto.getDe_licencenum());
		List<PaylogDTO> plist = dao.selectAllIPayed(dto);
		m.addAttribute("plist", plist);
		
		return "mypage/grooming_hairdresser_chargingDetails";
	}
	
}
