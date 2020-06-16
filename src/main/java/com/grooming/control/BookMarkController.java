package com.grooming.control;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grooming.dao.BookMarkDAO;
import com.grooming.dao.BookMarkDAOImple;
import com.grooming.dto.BookMarkDTO;
import com.grooming.dto.MemberDTO;

@Controller
public class BookMarkController {

	@Inject
	BookMarkDAOImple dao;
	
	
	//찜 테이블 등록 스타트
	@RequestMapping(value = "/bookmarkstart")
	public String asd() {
		System.out.println("asdasd=========================");
		return "bookmark";
	}
	//찜 테이블 등록 로직
	@PostMapping(value = "/bookmark")
	public String insertBookmark(@RequestParam(value = "de_licencenum")int licence,
								HttpServletRequest req) {
		//멤버 세션값 가져오기
		HttpSession hs = req.getSession();
		MemberDTO mem = (MemberDTO) hs.getAttribute("login");
		//값 삽입
		BookMarkDTO dto = new BookMarkDTO();
		dto.setMb_id(mem.getMb_id());
		dto.setDe_licencenum(licence);
		dao.insertBookmark(dto);
		
		return "mypage/grooming_user_bookmark";
	}
	
	//찜 목록 표시 스타트
	@RequestMapping(value = "/bookmarkSearchID")
	public String whatthe() {
		return "bookmarkSearchID";
	}
	
	//찜 목록 표시
	@RequestMapping(value = "/bookmarksearch")
	public String selectBookMark(BookMarkDTO dto, Model m) {
		String id = (String)m.getAttribute("mb_id");
		
		dto.setMb_id(id);
		List<BookMarkDTO> blist = dao.selectBookMark(dto);
		m.addAttribute("blist", blist);
		
		return "bookmarklist";
	}
	
	//찜 목록 삭제 스타트
	@RequestMapping(value = "/bookmarkdelete")
	public String deletestart() {
		return "deletebm";
	}
	//찜 목록 삭제
	@RequestMapping(value = "/deletethatiselect")
	public String deleteBookMark(@RequestParam(value = "id")String id, @RequestParam(value = "licence")int licence, BookMarkDTO dto) {
		dto.setDe_licencenum(licence);
		dto.setMb_id(id);
		dao.deleteBookMark(dto);
		return "deletebm";
	}

	
}
