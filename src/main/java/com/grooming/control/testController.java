package com.grooming.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class testController {

	@RequestMapping(value = "/wqe")
	public ModelAndView main(ModelAndView mv) throws Exception  {
		
		mv.setViewName("main/grooming_main");
		
		return mv;
	}
}
