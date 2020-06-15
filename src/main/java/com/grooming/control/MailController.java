package com.grooming.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MailController {
	
	@Autowired
	JavaMailSender mailSender;     //메일 서비스를 사용하기 위해 의존성을 주입함.
	
	// 회원가입시 이메일 인증
    @RequestMapping( value = "email" , method = {RequestMethod.GET, RequestMethod.POST} )
    public ModelAndView mailSending(HttpServletRequest request, HttpServletResponse response_email) throws IOException {

        Random r = new Random();
        int dice = r.nextInt(4589362) + 49311; //이메일로 받는 인증코드 부분 (난수)
        
        
        String setfrom = "Grooming";
        String tomail = request.getParameter("mb_email"); // 받는 사람 이메일
        String title = "Grooming 인증 이메일 입니다."; // 제목
        String content =
        
        System.getProperty("line.separator")+ //한줄씩 줄간격을 두기위해 작성
        
        System.getProperty("line.separator")+
                
        "안녕하세요 회원님 저희 홈페이지를 찾아주셔서 감사합니다"
        
        +System.getProperty("line.separator")+
        
        System.getProperty("line.separator")+

        " 인증번호는 " + dice + " 입니다. "
        
        +System.getProperty("line.separator")+
        
        System.getProperty("line.separator")+
        
        "받으신 인증번호를 홈페이지에 입력해 주세요."; // 내용
        
        
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
        mv.setViewName("login/grooming_send_email_form");     //뷰의이름
        mv.addObject("dice", dice);
        
//        System.out.println(tomail);
//        System.out.println("mv : "+mv);

        response_email.setContentType("text/html; charset=UTF-8");
        PrintWriter out_email = response_email.getWriter();
        out_email.println("<script>alert('이메일이 발송되었습니다. 인증번호를 입력해주세요.');</script>");
        out_email.flush();
        
        
        return mv;
        
    }

	// 회원가입시 받은 인증번호 사용하는 페이지
	@RequestMapping(value = "grooming_send_email_form{dice}", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView joinMember(String email_injeung, @PathVariable String dice, HttpServletResponse response_equals) throws IOException {
	
	    
	    
	    
//	    System.out.println("마지막 : email_injeung : "+email_injeung);
	    
//	    System.out.println("마지막 : dice : "+dice);
	    
	    
	    //페이지이동과 자료를 동시에 하기위해 ModelAndView를 사용해서 이동할 페이지와 자료를 담음
	     
	    ModelAndView mv = new ModelAndView();
	    
	    //mv.setViewName("grooming_register_form");
        
        mv.addObject("email",email_injeung);
	    
	    
	    if (email_injeung.equals(dice)) {
	        
	        
	    	response_equals.setContentType("text/html;charset=UTF-8");
	        
	        mv.setViewName("login/grooming_register_form");
	        
	        mv.addObject("email",email_injeung);
	        mv.addObject("email1",dice);
	        
	        
	        //만약 인증번호가 같다면 이메일을 회원가입 페이지로 같이 넘겨서 이메일을
	        //한번더 입력할 필요가 없게 한다.
	        
	        PrintWriter out_equals = response_equals.getWriter();
	        out_equals.println("<script>alert('인증번호가 일치하였습니다. 회원가입창으로 이동합니다.');</script>");
	        out_equals.println("<script>close();</script>");
	        out_equals.flush();
	
	        return mv;
	        
	        
	    }else if (email_injeung != dice) {
	        
	        
	        ModelAndView mv2 = new ModelAndView(); 
	        
	        mv2.setViewName("login/grooming_send_email_form");
	        
	        response_equals.setContentType("text/html; charset=UTF-8");
	        PrintWriter out_equals = response_equals.getWriter();
	        out_equals.println("<script>alert('인증번호가 일치하지않습니다. 인증번호를 다시 입력해주세요.'); </script>");
	        out_equals.flush();
	        
	
	        return mv2;
	        
	    }    
	
	    return mv;
	}
	
	
	
	// ID찾기시 이메일 인증
    @RequestMapping( value = "emailId" , method = {RequestMethod.GET, RequestMethod.POST} )
    public ModelAndView mailSendingId(HttpServletRequest request, HttpServletResponse response_email) throws IOException {

        Random r = new Random();
        int dice = r.nextInt(4589362) + 49311; //이메일로 받는 인증코드 부분 (난수)
        
        
        String setfrom = "Grooming";
        String tomail = request.getParameter("mb_email"); // 받는 사람 이메일
        String title = "Grooming 인증 이메일 입니다."; // 제목
        String content =
        
        System.getProperty("line.separator")+ //한줄씩 줄간격을 두기위해 작성
        
        System.getProperty("line.separator")+
                
        "안녕하세요 회원님 저희 홈페이지를 찾아주셔서 감사합니다"
        
        +System.getProperty("line.separator")+
        
        System.getProperty("line.separator")+

        " 인증번호는 " + dice + " 입니다. "
        
        +System.getProperty("line.separator")+
        
        System.getProperty("line.separator")+
        
        "받으신 인증번호를 홈페이지에 입력해 주세요."; // 내용
        
        
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
        mv.setViewName("login/grooming_send_email_form2");     //뷰의이름
        mv.addObject("dice", dice);
        
//        System.out.println(tomail);
//        System.out.println("mv : "+mv);

        response_email.setContentType("text/html; charset=UTF-8");
        PrintWriter out_email = response_email.getWriter();
        out_email.println("<script>alert('이메일이 발송되었습니다. 인증번호를 입력해주세요.');</script>");
        out_email.flush();
        
        
        return mv;
        
    }
	
	
	// 아이디 찾기시 받은 인증번호 사용하는 페이지
	@RequestMapping(value = "findId{dice}", method = RequestMethod.POST)
	public ModelAndView findId(String email_injeung, @PathVariable String dice, HttpServletResponse response_equals) throws IOException {
	
	    
	    
	    
	    System.out.println("마지막 : email_injeung : "+email_injeung);
	    
	    System.out.println("마지막 : dice : "+dice);
	    
	    
	    //페이지이동과 자료를 동시에 하기위해 ModelAndView를 사용해서 이동할 페이지와 자료를 담음
	     
	    ModelAndView mv = new ModelAndView();
	
	    
	    if (email_injeung.equals(dice)) {
	        
	        
	    	response_equals.setContentType("text/html;charset=UTF-8");
	        
	        mv.setViewName("login/grooming_send_email_form2");
	        
	        mv.addObject("e_mail",email_injeung);
	        
	        //만약 인증번호가 같다면 이메일을 회원가입 페이지로 같이 넘겨서 이메일을
	        //한번더 입력할 필요가 없게 한다.
	        
	        PrintWriter out_equals = response_equals.getWriter();
	        out_equals.println("<script>alert('인증번호가 일치하였습니다.');</script>");
	        out_equals.println("<script>close();</script>");
	        out_equals.flush();
	
	        return mv;
	        
	        
	    }else if (email_injeung != dice) {
	        
	        
	        ModelAndView mv2 = new ModelAndView(); 
	        
	        mv2.setViewName("email_injeung");
	        
	        response_equals.setContentType("text/html; charset=UTF-8");
	        PrintWriter out_equals = response_equals.getWriter();
	        out_equals.println("<script>alert('인증번호가 일치하지않습니다. 인증번호를 다시 입력해주세요.'); </script>");
	        out_equals.flush();
	        
	
	        return mv2;
	        
	    }    
	
	    return mv;
	}
	
	// PW찾기시 이메일 인증
    @RequestMapping( value = "emailPw" , method = {RequestMethod.GET, RequestMethod.POST} )
    public ModelAndView mailSendingPw(HttpServletRequest request, HttpServletResponse response_email) throws IOException {

        Random r = new Random();
        int dice = r.nextInt(4589362) + 49311; //이메일로 받는 인증코드 부분 (난수)
        
        
        String setfrom = "Grooming";
        String tomail = request.getParameter("mb_email"); // 받는 사람 이메일
        String title = "Grooming 인증 이메일 입니다."; // 제목
        String content =
        
        System.getProperty("line.separator")+ //한줄씩 줄간격을 두기위해 작성
        
        System.getProperty("line.separator")+
                
        "안녕하세요 회원님 저희 홈페이지를 찾아주셔서 감사합니다"
        
        +System.getProperty("line.separator")+
        
        System.getProperty("line.separator")+

        " 인증번호는 " + dice + " 입니다. "
        
        +System.getProperty("line.separator")+
        
        System.getProperty("line.separator")+
        
        "받으신 인증번호를 홈페이지에 입력해 주세요."; // 내용
        
        
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
        mv.setViewName("login/grooming_send_email_form3");     //뷰의이름
        mv.addObject("dice", dice);
        
//        System.out.println(tomail);
//        System.out.println("mv : "+mv);

        response_email.setContentType("text/html; charset=UTF-8");
        PrintWriter out_email = response_email.getWriter();
        out_email.println("<script>alert('이메일이 발송되었습니다. 인증번호를 입력해주세요.');</script>");
        out_email.flush();
        
        
        return mv;
        
    }
	
	
	// 비밀번로 찾기시 받은 인증번호 사용하는 페이지
	@RequestMapping(value = "findPw{dice}", method = RequestMethod.POST)
	public ModelAndView findPw(String email_injeung, @PathVariable String dice, HttpServletResponse response_equals) throws IOException {
		
		
		
		
		System.out.println("마지막 : email_injeung : "+email_injeung);
		
		System.out.println("마지막 : dice : "+dice);
		
		
		//페이지이동과 자료를 동시에 하기위해 ModelAndView를 사용해서 이동할 페이지와 자료를 담음
		
		ModelAndView mv = new ModelAndView();
		
		
		if (email_injeung.equals(dice)) {
			
			
			response_equals.setContentType("text/html;charset=UTF-8");
			
			mv.setViewName("ogin/grooming_send_email_form3");
			
			mv.addObject("e_mail",email_injeung);
			
			//만약 인증번호가 같다면 이메일을 회원가입 페이지로 같이 넘겨서 이메일을
			//한번더 입력할 필요가 없게 한다.
			
			PrintWriter out_equals = response_equals.getWriter();
			out_equals.println("<script>alert('인증번호가 일치하였습니다.');</script>");
			out_equals.flush();
			
			return mv;
			
			
		}else if (email_injeung != dice) {
			
			
			ModelAndView mv2 = new ModelAndView(); 
			
			mv2.setViewName("ogin/grooming_send_email_form3");
			
			response_equals.setContentType("text/html; charset=UTF-8");
			PrintWriter out_equals = response_equals.getWriter();
			out_equals.println("<script>alert('인증번호가 일치하지않습니다. 인증번호를 다시 입력해주세요.'); </script>");
			out_equals.flush();
			
			
			return mv2;
			
		}    
		
		return mv;
	}
	
	
	
}
