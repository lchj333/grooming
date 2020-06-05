package com.grooming.control;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Random;

import javax.inject.Inject;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.grooming.dao.MemberDAO;
import com.grooming.dto.MemberDTO;
import com.grooming.service.SecurityService;



@Controller
public class MemberController {
	@Inject
	MemberDAO dao;
	JavaMailSender mailSender;     //메일 서비스를 사용하기 위해 의존성을 주입함.
	
	
	@GetMapping(value = "/join")
	public String insertOk() {
		return "joinForm";
	}
	
	
	@PostMapping(value = "/join")
	public String join(MemberDTO memberDto, HttpServletRequest req) {
		
		
		
		SecurityService securityService = new SecurityService();
		
		//String securityPw = securityService.encryptSHA256(memberDto.getMb_pw());
		
		String mb_pw = req.getParameter("mb_pw");
		String securityPw = securityService.encryptSHA256(mb_pw);
		
		System.out.println(mb_pw);
		System.out.println(securityPw);
		
		memberDto.setMb_pw(securityPw);
		
		dao.joinMember(memberDto);
		
		return "home"; // 회원가입후 이동할 페이지
	}
	
	@RequestMapping(value = "/selectMemberAll")
	public String showList(Model model) {
		
		List<MemberDTO> list = dao.selectMemberAll();
		model.addAttribute("memberlist", list);
		
		return "member";
	}
	
	@RequestMapping(value = "/detail")
	public String showOne(@RequestParam(value = "mb_id", required = true)String mb_id,Model model) {
		MemberDTO dto = dao.selectOne(mb_id);
		
		model.addAttribute("info", dto);
		
		return "detail";
		
	}
	@RequestMapping(value = "/designerForm")
	public String showdeeigner(@RequestParam(value = "mb_id", required = true)String mb_id,Model model) {
		
		MemberDTO dto = dao.selectOne(mb_id);
		
		//System.out.println(dto);
		
		model.addAttribute("deinfo", dto);
		
		
		return "designerForm";
		
	}
	
	@RequestMapping(value = "/designerCheck")
	public String designerCheck(MemberDTO memberDto) {
		
		dao.designerCheck(memberDto);
		
		
		return "redirect:/selectMemberAll";
	}
	
	// mailSending 코드
    @RequestMapping( value = "email" )
    public ModelAndView mailSending(HttpServletRequest req, String mb_email, HttpServletResponse response_email) throws IOException {

        Random r = new Random();
        int dice = r.nextInt(4589362) + 49311; //이메일로 받는 인증코드 부분 (난수)
        
        String setfrom = "gootttest7@gamil.com";
        String tomail = req.getParameter("mb_email"); // 받는 사람 이메일
        String title = "회원가입 인증 이메일 입니다."; // 제목
        String content =
        
        System.getProperty("line.separator")+ //한줄씩 줄간격을 두기위해 작성
        
        System.getProperty("line.separator")+
                
        "안녕하세요 회원님 저희 홈페이지를 찾아주셔서 감사합니다"
        
        +System.getProperty("line.separator")+
        
        System.getProperty("line.separator")+

        " 인증번호는 " +dice+ " 입니다. "
        
        +System.getProperty("line.separator")+
        
        System.getProperty("line.separator")+
        
        "받으신 인증번호를 홈페이지에 입력해 주시면 다음으로 넘어갑니다."; // 내용
        
        
        try {
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper messageHelper = new MimeMessageHelper(message,
                    true, "UTF-8");

            messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
            messageHelper.setTo(tomail); // 받는사람 이메일
            messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
            messageHelper.setText(content); // 메일 내용
            
            mailSender.send(message);
        } catch (Exception e) {
            System.out.println(e);
        }
        
        ModelAndView mv = new ModelAndView();    //ModelAndView로 보낼 페이지를 지정하고, 보낼 값을 지정한다.
        mv.setViewName("email_injeung");     //뷰의이름
        mv.addObject("dice", dice);
        
        System.out.println("mv : "+mv);

        response_email.setContentType("text/html; charset=UTF-8");
        PrintWriter out_email = response_email.getWriter();
        out_email.println("<script>alert('이메일이 발송되었습니다. 인증번호를 입력해주세요.');</script>");
        out_email.flush();
        
        
        return mv;
        
    }

		//이메일 인증 페이지 맵핑 메소드
		@RequestMapping("/member/email.do")
		public String email() {
		    return "member/email";
		}
		
		
		//이메일로 받은 인증번호를 입력하고 전송 버튼을 누르면 맵핑되는 메소드.
		//내가 입력한 인증번호와 메일로 입력한 인증번호가 맞는지 확인해서 맞으면 회원가입 페이지로 넘어가고,
		//틀리면 다시 원래 페이지로 돌아오는 메소드
		@RequestMapping(value = "join_injeung.do{dice}", method = RequestMethod.POST)
		public ModelAndView join_injeung(String email_injeung, @PathVariable String dice, HttpServletResponse response_equals) throws IOException {
		
		    
		    
		    
		    System.out.println("마지막 : email_injeung : "+email_injeung);
		    
		    System.out.println("마지막 : dice : "+dice);
		    
		    
		    //페이지이동과 자료를 동시에 하기위해 ModelAndView를 사용해서 이동할 페이지와 자료를 담음
		     
		    ModelAndView mv = new ModelAndView();
		    
		    mv.setViewName("join.do");
		    
		    mv.addObject("mb_email",email_injeung);
		    
		    if (email_injeung.equals(dice)) {
		        
		        //인증번호가 일치할 경우 인증번호가 맞다는 창을 출력하고 회원가입창으로 이동함
		        
		        
		        
		        mv.setViewName("join");
		        
		        mv.addObject("mb_email",email_injeung);
		        
		        //만약 인증번호가 같다면 이메일을 회원가입 페이지로 같이 넘겨서 이메일을
		        //한번더 입력할 필요가 없게 한다.
		        
		        response_equals.setContentType("text/html; charset=UTF-8");
		        PrintWriter out_equals = response_equals.getWriter();
		        out_equals.println("<script>alert('인증번호가 일치하였습니다. 회원가입창으로 이동합니다.');</script>");
		        out_equals.flush();
		
		        return mv;
		        
		        
		    }else if (email_injeung != dice) {
		        
		        
		        ModelAndView mv2 = new ModelAndView(); 
		        
		        mv2.setViewName("email_injeung");
		        
		        response_equals.setContentType("text/html; charset=UTF-8");
		        PrintWriter out_equals = response_equals.getWriter();
		        out_equals.println("<script>alert('인증번호가 일치하지않습니다. 인증번호를 다시 입력해주세요.'); history.go(-1);</script>");
		        out_equals.flush();
		        
		
		        return mv2;
		        
		    }    
		
		    return mv;
		    
		}


	
}
