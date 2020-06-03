package com.grooming.control;

import java.util.Date;

import javax.inject.Inject;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.grooming.dao.RegistrationDAO;
import com.grooming.dto.RegisterationDTO;

@Controller
public class RegistrationController {
	//가게 등록,수정, 조회에 대한 컨트롤러
	
	@Inject
	RegistrationDAO rdao;
	
	//가게 등록
	@RequestMapping(path = "/registShop")
	public String asd(@Param(value = "licencenum")int licencenum,
				@Param(value = "title")String title,
				@Param(value = "shopname")String shopname,
				@Param(value = "shopaddress")String shopaddress,
				@Param(value = "wantdate")Date wantdate,
				@Param(value = "price")int price,
				@Param(value = "price")String con,
				@Param(value = "img")String img, Model model) {
		//메소드 바디
		RegisterationDTO dto = new RegisterationDTO(licencenum, title, shopname, 
				shopaddress, wantdate, price, con, img);
		System.out.println("하이~");
		return null;
	}
}
