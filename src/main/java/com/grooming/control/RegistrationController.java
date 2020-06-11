package com.grooming.control;


import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
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
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.grooming.dao.RegistrationDAO;
import com.grooming.dto.RegistrationDTO;
import com.grooming.utils.FileUpload;

@Controller
public class RegistrationController {
	FileUpload fu = new FileUpload();
	//가게 등록,수정, 조회에 대한 DAO
	@Inject
	RegistrationDAO rdao;
	
	private String realPath;
	
	@Autowired
	ServletContext c;
	/*
	@PostConstruct는 의존성 주입이 이루어진 후 초기화를 수행하는 메서드이다. 
	@PostConstruct가 붙은 메서드는 클래스가 service(로직을 탈 때? 로 생각 됨)를 수행하기 전에 발생한다. 
	이 메서드는 다른 리소스에서 호출되지 않는다해도 수행된다. */
	@PostConstruct // -> 서버 service를 시작할때 자동으로 실행
	public void initMethod() {
		this.realPath = c.getRealPath("/resources/shopimags/");	//저장할 경로
	}
	//메뉴 ->
	//가게 등록 폼
	@GetMapping(value = "/mypage/registShop")
	public String insertShopForm() {
		return "mypage/grooming_user_hairdresserRegist";
	}
	//등록폼 (작성 후)->
	//가게 등록 (+썸네일 이미지)
	@PostMapping(value = "/mypage/registShop")
	public String insertShopInfo(RegistrationDTO dto, MultipartHttpServletRequest ms //스프링에서 알아서 set.
									) throws IllegalStateException, IOException {
		//메소드 바디
		//post 파라미터
		MultipartFile mfile = ms.getFile("file");
		
		//이미지 추가 메소드
		String fileName = fu.saveFile(mfile, realPath);
			
		//저장된 파일 이름 담기
//		dto.setReg_img(fileName);
		
		//최종적 DB저장
//		rdao.insertShop(dto);
		
		return "redirect:/mypage/insertInfoImgs";
	}
	//↕(컨트롤끼리 이동)
	//샵 상세 이미지 추가 폼
	@GetMapping(value = "/mypage/insertInfoImgs")
	public String addShopImgsForm(HttpServletResponse res) throws IOException {
		res.setContentType("text/html; charset=UTF-8");
		 
		PrintWriter out = res.getWriter();
		 
		out.println("<script>alert('추가이미지 등록페이지로 이동합니다.');</script>");
		 
		out.flush();

		return "mypage/grooming_hairdresser_addListDetail";
	}
	//추가폼 (작성 후) ->
	//샵 상세 이미지 추가 메소드
	@PostMapping(value = "/mypage/insertInfoImgs")
	public String addShopImgs(MultipartHttpServletRequest ms, HttpServletRequest req) throws IllegalStateException, IOException {
//		int de_licencenum = (int)req.getAttribute("de_licencenum");	//세션일 경우
//		int de_licencenum = Integer.parseInt(ms.getParameter("de_licencenum"));//파라미터일 경우
		
		List<MultipartFile> list = ms.getFiles("files");
		//IOException - 파일이 없을 때 발생할 에러. 호출함수인 xml의 DispatcherServlet class로 예외처리 전가//studentNumber - submissionForm의 속성 name 
		System.out.println("list : "+list);
		
		if (list.size() > 0 && list.size() <= 5) { //1개 ~ 5개 제한
			for(MultipartFile mfile : list) {
				//파일 저장 메소드 실행
				String fileName = fu.saveFile(mfile, realPath);
				
				//DTO
//				RegistrationDTO dto = new RegistrationDTO(de_licencenum, fileName);
				//저장된 파일이름과 라이선스 번호 저장
//				rdao.insertShop(dto);
			}
		}else {	//넘어온 파일이 없을 경우
			System.out.println("파일이 담겨있지않습니다.");
		}
		//유저정보페이지로 이동
		return "mypage/grooming_user_profile";
	}
	
	//가게 정보 블럭 상태 변경 (관리자에 의한)
	@RequestMapping(value = "/blockShop")
	public String shopBlockByAdmin(int no) {
		rdao.changeStateByAdmin(no);
		
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
	
	//등록시 포인트 깍기
	/************************************
		컨트롤에서 사용할 유틸 메소드..
	*************************************/
	//컨트롤 테스트용
	@RequestMapping(value = "/test")
	public String goToTest() {
		
		return "upTest";
	}
	
	//실제 파일 저장 메소드
	public String saveFile(MultipartFile mfile, String filePath) throws IllegalStateException, IOException {
		//문자열 요리
		String originalFile = mfile.getOriginalFilename();
		String originalFileExtension = originalFile.substring(originalFile.lastIndexOf("."));
		String storedFileName = UUID.randomUUID().toString().replaceAll("-", "") + originalFileExtension;
		
		//파일 저장
		File file = new File(realPath + filePath + storedFileName) ;//realPath : 톰캣내의 주소
		mfile.transferTo(file);
			
		//체크
		System.out.println("file.getPath() : "+file.getPath());
//		System.out.println(originalFile + "은 업로드한 파일이다.");
		System.out.println(storedFileName + "라는 이름으로 업로드 됐다.");
//		System.out.println("파일사이즈는 " + mfile.getSize());
	
		//실제 저장되는 파일이름 리턴
		return storedFileName;
	}
	
}
