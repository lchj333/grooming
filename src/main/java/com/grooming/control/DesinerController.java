package com.grooming.control;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grooming.dao.DesinerDAO;
import com.grooming.dao.DesinerDAOImple;
import com.grooming.dao.PaylogDAO;
import com.grooming.dao.PaylogDAOImple;
import com.grooming.dto.DesignerDTO;
import com.grooming.dto.PaylogDTO;

@Controller
public class DesinerController {

	@Inject
	DesinerDAOImple dao;

	@Inject
	PaylogDAOImple dao2;

	@RequestMapping(value = "/list")
	public String showList(Model model) {
		List<DesignerDTO> list = dao.selectAllDes();
		model.addAttribute("list", list);

		return "list";
	}

	// 결제 후 충전 금액 입력 로직 + 결제정보 테이블에 값 입력 충전금액 대비 충전포인트 비율은 1:1
	@RequestMapping(value = "/update")
	public String updatewe() {
		return "updateForm";
	}

	@PostMapping(value = "/update2")
	public String updatewe2(@RequestParam(value = "de_point")int point1, @RequestParam(value = "de_licencenum")int point2, Model m) {
		m.addAttribute("point1", point1);
		m.addAttribute("point2", point2);
			
		return "updatePay";
	}

	@PostMapping(value = "/updateOK")
	public String updateDes(
	@RequestParam(value = "pt1")int pt1, @RequestParam(value = "pt2")int pt2,
	DesignerDTO dto, PaylogDTO dto2) {
		
		dto.setDe_point(pt1); dto.setDe_licencenum(pt2);
		 
		dto2.setDe_licencenum(pt2); dto2.setPay_money(pt1);
		System.out.println(dto2.getDe_licencenum() + "  " +dto2.getPay_money()+"---------------------");
		
		dao.updateDes(dto);
		dao.insertMoney(dto);


		return "redirect:/list";
	}
	//요기 까지 충전 금액 입력 로직입니다.
 
	@PostMapping(value = "/selectPayForm")
	public String selectPay(@RequestParam(value = "licencenum")int licence, Model m) {
		System.out.println("반응");
		DesignerDTO dto = dao.selectOneDesi(licence);
		m.addAttribute("pay", dto);
		System.out.println(licence);
		
		return "selectPayed";
	}
	
	@PostMapping(value = "/selectPay")
	public String whatthenice() {
		return "selectPayForm";
	}
	
	
	
	
	
}
