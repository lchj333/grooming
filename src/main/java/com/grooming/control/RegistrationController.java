package com.grooming.control;


import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.grooming.dao.RegistrationDAO;
import com.grooming.dto.RegisterationDTO;

@Controller
public class RegistrationController {
	//가게 등록,수정, 조회에 대한 컨트롤러
	@Inject
	RegistrationDAO rdao;
	
	//가게 등록
	@RequestMapping(path = "/registShop")
	public String insertShopInfo(RegisterationDTO dto, Model model) {//스프링에서 알아서 set.
		//값 입력 메소드
		rdao.insertShop(dto);
//		System.out.println("/registShop");
		return "home";
	}
	
	//가게 정보 블럭 처리 (관리자에 의한)
	@RequestMapping(value = "/blockShop")
	public String shopBlockByAdmin(int no) {
//		rdao.
		return "home";
	}
	
	//가게 상세 이미지 추가 메소드
	@RequestMapping(value = "/addShopimgs")
	public String addShopImgs(@RequestParam(value = "de_licencenum")int licencenum, 
							MultipartHttpServletRequest req) {
		//메소드 바디
		RegisterationDTO dto = new RegisterationDTO();
		
		dto.setDe_licencenum(licencenum); //식별 컬럼
		
		//파일 업로드
		MultipartFile mf = req.getFile("addimg"); //업로드 파라미터 (파라미터 이름인듯하다)
		String path = req.getRealPath("resources/shopimags"); //저장될 위치
		String fileName = mf.getOriginalFilename(); //업로드 파일 이름
		File uploadFile = new File(path+"//"+fileName); //복사될 위치..
		try {
			mf.transferTo(uploadFile); //업로드
		}catch (IllegalStateException e){
			e.printStackTrace();
		}catch(IOException e) {
			e.printStackTrace();
		}
		dto.setReg_addimg(fileName);//변환된 이미지 경로 + 이름인거 같다
		
		rdao.insertShopInfoimg(dto);
		return "home";
	}
	
	//컨트롤 테스트용
	@RequestMapping(path = "/shoptest")
	public String test(Model model) {
		List<RegisterationDTO> list = rdao.testTest(9000);
		
		for(RegisterationDTO d : list) {
			System.out.print("licencenum : "+d.getDe_licencenum());
			System.out.println("imgname : "+d.getReg_addimg());
		}
		
		return "home";
	}
	
	//컨트롤 테스트용
	@RequestMapping(path = "/test")
	public String goToTest(Model model) {
		return "mypage/addList";
	}
	
	/************************************
		컨트롤에서 사용할 유틸 메소드..
	*************************************/
}
