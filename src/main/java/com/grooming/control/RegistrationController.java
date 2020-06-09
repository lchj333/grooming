package com.grooming.control;


import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.annotation.PostConstruct;
import javax.inject.Inject;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.grooming.dao.RegistrationDAO;
import com.grooming.dto.RegistrationDTO;

@Controller
public class RegistrationController {
	//가게 등록,수정, 조회에 대한 컨트롤러
	@Inject
	RegistrationDAO rdao;
	
	@Autowired//서블릿의 실제 주소를 받아오기위해 선언
	ServletContext c;
	
	private String realPath;
	/*
	@PostConstruct는 의존성 주입이 이루어진 후 초기화를 수행하는 메서드이다. 
	@PostConstruct가 붙은 메서드는 클래스가 service(로직을 탈 때? 로 생각 됨)를 수행하기 전에 발생한다. 
	이 메서드는 다른 리소스에서 호출되지 않는다해도 수행된다. */
	@PostConstruct
	public void initController() {
		this.realPath = c.getRealPath("/resources/shopimags/");
//		System.out.println("Registration컨트롤러의 @PostConstruct 작동.");
	}
	
	//가게 등록
	@RequestMapping(path = "/registShop")
	public String insertShopInfo(RegistrationDTO dto, Model model) {//스프링에서 알아서 set.
		//값 입력 메소드
		rdao.insertShop(dto);
//		System.out.println("/registShop");
		return "home";
	}
	
	//가게 정보 블럭 상태 변경 (관리자에 의한)
	@RequestMapping(value = "/blockShop")
	public String shopBlockByAdmin(int no) {
//		rdao.
		return "home";
	}
	
	//가게 상세 정보
	@RequestMapping(value = "/detailShop")
	public String detailShopInfo(int licencenum, HttpSession hs) {
		//가게 정보
//		List<RegisterationDTO> list = rdao.sel~~~~
//		hs.getAttribute(name)
		//가게 상세이미지 목록
//		if()!=null)
		return "";
	}
	
	//가게 상세 이미지 추가 메소드
	@RequestMapping(value = "/file-upload", method = RequestMethod.POST)
	public String addShopImgs(MultipartHttpServletRequest ms, HttpServletRequest req) throws IllegalStateException, IOException {
		String licenceNum = ms.getParameter("licenceNum");
		MultipartFile mfile = ms.getFile("file");
		
		//IOException - 파일이 없을 때 발생할 에러. 호출함수인 xml의 DispatcherServlet class로 예외처리 전가//studentNumber - submissionForm의 속성 name 
		String originalFile = mfile.getOriginalFilename();
		String originalFileExtension = originalFile.substring(originalFile.lastIndexOf("."));
		String storedFileName = UUID.randomUUID().toString().replaceAll("-", "") + originalFileExtension;
		   
		File file = new File("/resources/shopimags/" + storedFileName);//realPath : 톰캣내의 주소
		mfile.transferTo(file);
		   
		System.out.println("file.getPath() : "+file.getPath());
		System.out.println(licenceNum + "가 업로드한 파일은");
		System.out.println(originalFile + "은 업로드한 파일이다.");
		System.out.println(storedFileName + "라는 이름으로 업로드 됐다.");
		System.out.println("파일사이즈는 " + mfile.getSize());
		
//		req.setAttribute("filePath", realPath);
//		req.setAttribute("fileName", storedFileName);
		req.setAttribute("loadimg", "/resources/shopimags/"+storedFileName);
	
		return "home";
	}
	
	//컨트롤 테스트용
	@RequestMapping(path = "/shoptest")
	public String test(Model model) {
		List<RegistrationDTO> list = rdao.testTest(9000);
		
		for(RegistrationDTO d : list) {
			System.out.print("licencenum : "+d.getDe_licencenum());
			System.out.println("imgname : "+d.getReg_addimg());
		}
		
		return "home";
	}
	
	//컨트롤 테스트용e
	@RequestMapping(path = "/test")
	public String goToTest(HttpServletRequest req, HttpServletResponse res) {
		req.setAttribute("loadimg", "44e24070d1ea429e90550b1bc8df68e1.png");
		System.out.println("c.getRealPath(/) : "+c.getRealPath("/"));
		
		return "home";
//		return "fileUpload";
	}
	
	//등록시 포인트 깍기
	/************************************
		컨트롤에서 사용할 유틸 메소드..
	*************************************/
	//실제 이미지 추가 메소드
	public String addImg(MultipartFile mfile) throws IllegalStateException, IOException {
		//IOException - 파일이 없을 때 발생할 에러. 호출함수인 xml의 DispatcherServlet class로 예외처리 전가//studentNumber - submissionForm의 속성 name 
		String originalFile = mfile.getOriginalFilename();
		String originalFileExtension = originalFile.substring(originalFile.lastIndexOf("."));
		String storedFileName = UUID.randomUUID().toString().replaceAll("-", "") + originalFileExtension;
		   
		File file = new File("/resources/shopimags/" + storedFileName);//realPath : 톰캣내의 주소
		mfile.transferTo(file);
		   
		System.out.println("file.getPath() : "+file.getPath());
		System.out.println(originalFile + "은 업로드한 파일이다.");
		System.out.println(storedFileName + "라는 이름으로 업로드 됐다.");
		System.out.println("파일사이즈는 " + mfile.getSize());
	
		return storedFileName;
	}
	
	//저장된 이미지 파일 불러오기
	public void loadImg() {
		
	}
}
