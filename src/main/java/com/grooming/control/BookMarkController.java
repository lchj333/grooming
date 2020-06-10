package com.grooming.control;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grooming.dao.BookMarkDAO;
import com.grooming.dto.BookMarkDTO;

@Controller
public class BookMarkController {

	@Inject
	BookMarkDAO dao;
	
	
	//찜 테이블 등록 스타트
	@RequestMapping(value = "/bookmarkstart")
	public String asd() {
		System.out.println("asdasd=========================");
		return "bookmark";
	}
	//찜 테이블 등록 로직
	@PostMapping(value = "/bookmark")
	public void insertBookmark(@RequestParam(value = "de_licencenum")int licence,
			@RequestParam(value = "mb_id")String id, BookMarkDTO dto) {
		dto.setDe_licencenum(licence);
		dto.setMb_id(id);
		dao.insertBookmark(dto);	
	}
	
	//찜 목록 표시 스타트
	@RequestMapping(value = "bookmarkSearchID")
	public String whatthe() {
		return "bookmarkSearchID";
	}
	
	//찜 목록 표시
	@RequestMapping(value = "/bookmarksearch")
	public String selectBookMark(@RequestParam(value = "mb_id")String id,BookMarkDTO dto, Model m) {
		dto.setMb_id(id);
		List<BookMarkDTO> blist = dao.selectBookMark(dto);
		m.addAttribute("blist", blist);
		
		return "bookmarklist";
	}
	
	//찜 목록 삭제 스타트
	@RequestMapping(value = "bookmarkdelete")
	public String deletestart() {
		return "deletebm";
	}
	//찜 목록 삭제
	@RequestMapping(value = "deletethatiselect")
	public void deleteBookMark(@RequestParam(value = "id")String id, @RequestParam(value = "licence")int licence, BookMarkDTO dto) {
		dto.setDe_licencenum(licence);
		dto.setMb_id(id);
		dao.deleteBookMark(dto);
	}

	
}
