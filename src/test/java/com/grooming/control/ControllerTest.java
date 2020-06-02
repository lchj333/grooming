package com.grooming.control;

import javax.inject.Inject;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml")
@WebAppConfiguration //mvc 구동을 위한 어노테이션
public class ControllerTest {
	private static final Logger logger =
			LoggerFactory.getLogger(ControllerTest.class);
	
	@Inject
	private WebApplicationContext webAppCtx;
	
	private MockMvc mockMvc;	//브라우저와 요청, 응답을 하는 객체  (이 객체가 WAS를 대신해 줌)
	
	@Before													//구동 되기 전 was가 작동되어야하기 때문에
	public void setUp() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(this.webAppCtx).build();	//was작동 역할
		logger.info("setUp() completed");
	}
	
	@Test
	public void testController() throws Exception {
		mockMvc.perform(MockMvcRequestBuilders.get("/controller"));//get,post둘다 됨. (지금은 get방식)
	}
	//현재 서블릿 버전 낮아서 실행 불가
}
