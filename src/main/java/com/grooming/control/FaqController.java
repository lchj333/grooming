package com.grooming.control;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grooming.dao.FaqDAO;
import com.grooming.dto.FaqDTO;

@Controller
public class FaqController {
	
	@Inject
	FaqDAO faqdao;
	
//	//자주묻는 질문(Faq) 전체조회
//	@RequestMapping(value="/faqList")
//	public String faqList(Model model) {
//		List<FaqDTO> list = faqdao.selectList();
//		model.addAttribute("list", list);
//		return "board/grooming_faqboard_listanddetail";
//	}
	
	//자주묻는 질문(Faq) 전체조회
		@RequestMapping(value="/faqList")
		public String faqList(Model model, HttpServletRequest req) {
			int num = 1;
			
			String n = req.getParameter("num");
			
			if(n!=null&&n!="") {
				num = Integer.parseInt(n);
			}
			
			//게시물 총 갯수
			int count = faqdao.count();
			// 한 페이지에 출력할 공지사항 숫자
			int postNum = 5;
			//하단 페이징 번호
			int pageNum = (int)Math.ceil((double)count/postNum);
			// 출력할 게시물
			int displayPost = (num-1)*postNum;
			
			// 한번에 표시할 페이징 번호의 갯수
			int pageNum_cnt = 5;
			
			// 표시되는 페이지 번호 중 마지막 번호
			int endPageNum = (int)(Math.ceil((double)num / (double)pageNum_cnt) * pageNum_cnt);
			
			// 표시되는 페이지 번호 중 첫번째 번호
			int startPageNum = endPageNum - (pageNum_cnt - 1);
			
			//마지막 번호 재계산
			int endPageNum_tmp = (int)(Math.ceil((double)count / (double)pageNum_cnt));		 
			if(endPageNum > endPageNum_tmp) endPageNum = endPageNum_tmp;
			
			boolean prev = startPageNum == 1 ? false : true;
			boolean next = endPageNum * pageNum_cnt >= count ? false : true;
			
			// 시작 및 끝 번호
			model.addAttribute("startPageNum", startPageNum);
			model.addAttribute("endPageNum", endPageNum);

			// 이전 및 다음
			model.addAttribute("prev", prev);
			model.addAttribute("next", next);
						
			List<FaqDTO> list = faqdao.listPage(displayPost, postNum);
			model.addAttribute("list", list);
			model.addAttribute("pageNum", pageNum);
			
			HttpSession ss = req.getSession();
			ss.setAttribute("pn", num);
			model.addAttribute("select", num);
						
			return "board/grooming_faqboard_listanddetail";
		}
	
		//자주묻는 질문(Faq) 전체조회
				@RequestMapping(value="/faqList2")
				public String faqList2(Model model, HttpServletRequest req) {
					int num = 1;
					
					String n = req.getParameter("num");
					
					if(n!=null&&n!="") {
						num = Integer.parseInt(n);
					}
					
					//게시물 총 갯수
					int count = faqdao.count();
					// 한 페이지에 출력할 공지사항 숫자
					int postNum = 5;
					//하단 페이징 번호
					int pageNum = (int)Math.ceil((double)count/postNum);
					// 출력할 게시물
					int displayPost = (num-1)*postNum;
					
					// 한번에 표시할 페이징 번호의 갯수
					int pageNum_cnt = 5;
					
					// 표시되는 페이지 번호 중 마지막 번호
					int endPageNum = (int)(Math.ceil((double)num / (double)pageNum_cnt) * pageNum_cnt);
					
					// 표시되는 페이지 번호 중 첫번째 번호
					int startPageNum = endPageNum - (pageNum_cnt - 1);
					
					//마지막 번호 재계산
					int endPageNum_tmp = (int)(Math.ceil((double)count / (double)pageNum_cnt));		 
					if(endPageNum > endPageNum_tmp) endPageNum = endPageNum_tmp;
					
					boolean prev = startPageNum == 1 ? false : true;
					boolean next = endPageNum * pageNum_cnt >= count ? false : true;
					
					// 시작 및 끝 번호
					model.addAttribute("startPageNum", startPageNum);
					model.addAttribute("endPageNum", endPageNum);

					// 이전 및 다음
					model.addAttribute("prev", prev);
					model.addAttribute("next", next);
								
					List<FaqDTO> list = faqdao.listPage(displayPost, postNum);
					model.addAttribute("list", list);
					model.addAttribute("pageNum", pageNum);
					
					HttpSession ss = req.getSession();
					ss.setAttribute("pn", num);
					model.addAttribute("select", num);
								
					return "board/grooming_faqboard_listanddetail2";
				}
	
	//상세내용 보기
	@RequestMapping(value="/faqDetail")
	public String faqDetail(@RequestParam(value="f_title")String f_title, Model model) {
		FaqDTO faqdto = faqdao.selectOne(f_title);
		model.addAttribute("inform", faqdto);
		return "gr_faqboard_detail";
	}
	
	//글 작성하기 페이지로 이동하기
	@GetMapping(value="/faqInsert")
	public String faqWrite(Model model) {
		/*return "gr_faqboard_insert";*/
		return "board/grooming_faqboard_write";
	}
	// 글 작성하기
	@PostMapping(value="/faqInsert")
	public String WriteOk(@ModelAttribute FaqDTO faqdto) {
		faqdao.insertOne(faqdto);
		return "redirect:/faqList2";
	}
	
	// 글 수정하기 페이지로 이동
	@GetMapping(value="faqUpdate")
	public String faqUpdate(@RequestParam(value="f_title")String f_title, Model model) {
		FaqDTO faqdto = faqdao.selectOne(f_title);
		model.addAttribute("inform", faqdto);
		return "gr_faqboard_update";
	}
	
	// 글 수정하기
	@PostMapping(value="faqUpdate")
	public String UpdateOk(@ModelAttribute FaqDTO faqdto,
						@RequestParam(value="f_title")String f_title, Model model) {
		faqdao.updateOne(faqdto);
		return "redirect:/faqList2";
	}
	
	// 글 삭제하기
	@RequestMapping(value="faqDelete")
	public String faqDelete(@RequestParam(value="f_title")String f_title, Model model) {
		faqdao.deleteOne(f_title);
		return "redirect:/faqList2";
	}
}
