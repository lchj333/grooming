package com.grooming.control;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grooming.dao.AfagDAO;
import com.grooming.dto.AfagDTO;

@Controller
public class AfagController {
	
	@Inject
	AfagDAO dao;
	
	// 댓글보기
	@RequestMapping(value="/afagDetail")
	public String afagDetail(@RequestParam(value="in_num")int in_num,
							HttpServletRequest req) {
		AfagDTO dto = dao.selectOne(in_num);
		req.setAttribute("inform", dto);
		
		HttpSession session = req.getSession();
		return "";
	}
	// 댓글 작성하기페이지로
	// 작성하기
	
}
