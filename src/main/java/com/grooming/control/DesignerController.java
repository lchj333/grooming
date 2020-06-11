package com.grooming.control;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;

import com.grooming.dao.DesignerDAO;
import com.grooming.dto.DesignerDTO;
import com.grooming.utils.FileUpload;

@Controller
public class DesignerController {

	@Inject
	DesignerDAO dao;

	// 디자이너 시청하는 메소드
	@RequestMapping(value = "/designerJoin")
	public String designerJoin(@ModelAttribute("mb_id") DesignerDTO designerDto,
									MultipartRequest mr, HttpServletRequest req) {
		String fileName = null;
		//라이센스 이미지 받기
		try {
			String realPath = req.getServletContext().getRealPath("/resources/licence/");
			fileName = new FileUpload().saveFile(mr.getFile(""), realPath);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		if(fileName == null) {//파일이 제대로 저장되지 않았을 경우
			return "home";
		}

		designerDto.setDe_licence(fileName);
		dao.joinDesigner(designerDto);
		return "redirect:/selectMemberAll";
	}

	// 디자이너 전체 조회
	@RequestMapping(value = "/designerList")
	public String designerList(Model model) {
		List<DesignerDTO> list = dao.selectDesignerAll();
		model.addAttribute("designerList", list);

		return "designerList";
	}

	// 디자이너 신청한 멤버 목록 받아오는 메소드
	@RequestMapping(value = "/designerApplication")
	public String designerApplication(Model model) {

		List<DesignerDTO> list = dao.designerApplication();
		model.addAttribute("designerApplication", list);

		return "designerApplication";
	}

	// 디자이너 de_approval 승인하는 메소드
	@RequestMapping(value = "designerAgree")
	public String designerAgree(@ModelAttribute("mb_id")DesignerDTO designerDto) {

		dao.designerAgree(designerDto);

		return "designerAgree";
	}

}
