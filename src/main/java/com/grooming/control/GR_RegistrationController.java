package com.grooming.control;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.grooming.dao.RegistrationDAO;

@Controller
public class GR_RegistrationController {
	//가게 등록,수정에 대한 컨트롤러
	
	@Inject
	RegistrationDAO rdao;
	
	@RequestMapping(path = "/regist")
	public void asd() {
		System.out.println("하이~");
	}
}
