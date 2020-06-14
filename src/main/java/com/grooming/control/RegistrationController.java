package com.grooming.control;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.grooming.dao.RegistrationDAO;
import com.grooming.dto.RegistrationDTO;
import com.grooming.dto.ShopListDTO;
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
		return "mypage/grooming_hairdresser_addList";
	}
	//등록폼 (작성 후)->
	//가게 등록 (+썸네일 이미지)
	@PostMapping(value = "/mypage/registShop")
	public String insertShopInfo(RegistrationDTO dto, MultipartHttpServletRequest ms, //스프링에서 알아서 set.
									HttpServletRequest req) throws IllegalStateException, IOException {
		//메소드 바디
		String lnum = (String)req.getAttribute("dInfo.de_licencenum");
		if(lnum == null & lnum.equals("")) {
			return "mypage/grooming_user_profile";//미용사 값 없을 경우
		}else {
			//미용사 넘버 저장
			int num = Integer.parseInt(lnum); 
			dto.setDe_licencenum(num);
			
			String lPath = req.getServletContext().getRealPath("/resources/thumbnail/");
			//post 파라미터
			MultipartFile mfile = ms.getFile("file");
			
			//이미지 추가 메소드
			String fileName = fu.saveFile(mfile, lPath);
				
			//저장된 파일 이름 담기
			dto.setReg_img(fileName);
			
			//최종적 DB저장
			rdao.insertShop(dto);
			
			return "redirect:/mypage/insertInfoImgs";
		}
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
	public String addShopImgs(MultipartHttpServletRequest ms, HttpServletRequest req,
									HttpServletResponse res, RedirectAttributes rtt) 
														throws IllegalStateException, IOException {
		//메소드 바디
		int de_licencenum = (int)req.getAttribute("de_licencenum");	//세션일 경우
//		int de_licencenum = Integer.parseInt(ms.getParameter("de_licencenum"));//파라미터일 경우
		
		List<MultipartFile> list = ms.getFiles("files");
		//IOException - 파일이 없을 때 발생할 에러. 호출함수인 xml의 DispatcherServlet class로 예외처리 전가//studentNumber - submissionForm의 속성 name 
		System.out.println("list : "+list);
		//alert작성을 위한 writer
		PrintWriter out = res.getWriter();
		
		if (list.size() > 0 && list.size() <= 8) { //1개 ~ 5개 제한
			for(MultipartFile mfile : list) {
				//파일 저장 메소드 실행
				String fileName = fu.saveFile(mfile, realPath);
				
				//DTO
				RegistrationDTO dto = new RegistrationDTO(de_licencenum, fileName);
				//저장된 파일이름과 라이선스 번호 저장
				rdao.insertShop(dto);
			}
		}else {	//넘어온 파일이 없을 경우
			rtt.addFlashAttribute("de_licencenum", de_licencenum);
			
			out.println("<script>alert('파일이 없거나 너무 많습니다!');</script>");
			out.flush();
			
			return "redirect:/mypage/insertInfoImgs";
		}
		//유저정보페이지로 이동
		out.println("<script>alert('완료!');</script>");
		out.flush();
		
		return "mypage/grooming_user_profile";
	}
	
	//가게 정보 블럭 상태 변경 (관리자에 의한)
	@RequestMapping(value = "/blockShop")
	public String shopBlockByAdmin(@RequestParam
										(value = "de_licencenum", required = true)int licencenum, 
															HttpServletRequest req) {
		//메소드 바디
		String ad_id = (String) req.getAttribute("ad_id");
		if(ad_id==null) {//관리자 아이디 값이 없을 경우
			return "redirect:"+req.getHeader("Referer");//뒤로 보내기
		}else {
			RegistrationDTO dto = new RegistrationDTO();
			dto.setDe_licencenum(licencenum);
			dto.setReg_block(Integer.parseInt(req.getParameter("reg_block")));
			
			rdao.changeStateByAdmin(dto);
			
			return "home";
		}
		
	}
	
	//grooming_main->
	// 가게 검색
	@RequestMapping(value = "/search/shopList")
	public String listShop(@RequestParam(value = "searchData", defaultValue = "")String data, 
											HttpServletRequest req) {
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("key", "REG_SHOPADDRESS");
		map.put("data", data);
		
		List<ShopListDTO> list = rdao.searchShop(map);
		
		if(list == null) { //검색값이 없을 경우
			return "main/grooming_main";
		}else {
			req.setAttribute("shopList", list);
			
			return "search/grooming_screen_map";
		}
	}
	//-> grooming_screen_map (샵 목록) ->
	//가게 상세 정보
	@RequestMapping(value = "/detailShop")
	public String detailShopInfo(@RequestParam(value = "de_licencenum", required = true)int num, 
										HttpServletRequest req) {
		//텍스트 정보
		RegistrationDTO dto = rdao.infoShop(num);
		if(dto != null) {//가져온 정보가 있을 때
			req.setAttribute("RegistrationDTO", dto);
			
			//샵 이미지들
			List<String> imgs = rdao.infoImgs(num);
			if(imgs != null) {//가져온 이미지들이 있을 때
				req.setAttribute("infoImgs", imgs);
			}
			
			return "search/grooming_result_detail";
		}else {//가져온 정보가 없을 때
			return "main/grooming_main";
		}
			
	}//-> 예약 체크 페이지
	
	//등록시 포인트 깍기
	/************************************
		컨트롤에서 사용할 유틸 메소드..
	*************************************/
	//샵 모든 리스트
	@RequestMapping(value = "allShop", method = RequestMethod.POST)
	public String searchShop(HttpServletRequest req) {
//		rdao.getList(map);
		return "search/grooming_screen_map";
	}
	
	@RequestMapping(value = "go")
	public String go() {
		return "search/grooming_result_detail";
	}
	// 등록글 검색
	
	
}
