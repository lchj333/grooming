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
import com.grooming.dto.DesignerDTO;
import com.grooming.dto.PaylogDTO;

@Controller
public class DesinerController {

	@Inject
	DesinerDAOImple dao;


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
		
		dao.updateDes(dto);
		dao.insertMoney(dto);


		return "redirect:/list";
	}
	//요기 까지 충전 금액 입력 로직입니다.
	
	//금액 사용 시 디자이너 테이블에서 금액 마이너스
	//이건 나중에 글 올리는 로직이 연동 된 다음에 money를 따오는걸 고정값으로 넣고 라이센스 넘버만 받아서 사용하면 됩니다.
	@RequestMapping(value = "/Minus")
	public String updateDesMinus(@RequestParam(value = "money")int no, @RequestParam(value = "licence")int licence, DesignerDTO dto) {
		dto.setDe_licencenum(licence);
		dto.setDe_point(no);
		
		dao.updateDesMinus(dto);
		
		return "list";
	}
	
	
	//자신의 결제 금액 출력 메소드
	@RequestMapping(value = "oneselectStart")
	public String showMoneyStart() {
		return "selectmoney";
	}
	@RequestMapping(value = "onselect")
	public String showMoney(@RequestParam(value = "licence")int no, Model m, DesignerDTO dto) {
		dto.setDe_licencenum(no);
		List<DesignerDTO> olist = dao.selectPointOne(dto);
		m.addAttribute("olist", olist);
		
		return "selectonelist";
	}
	
	
	
}
