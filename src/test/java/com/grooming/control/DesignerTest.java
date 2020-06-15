package com.grooming.control;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.grooming.dao.DesignerDAO;
import com.grooming.dto.DesignerDTO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class DesignerTest {

	@Inject DesignerDAO designerDao;
	
	@Test
	public void testDesigner() {
		DesignerDTO dto = new DesignerDTO();
		
		dto.setMb_id("aaaa");
		dto.setDe_licence("나는 짱짱맨 미용사");
		dto.setDe_approval("N");
		dto.setDe_point(1000);
		
		designerDao.joinDesigner(dto);
		
		System.out.println("미용사 등록 성공");
	}
	
}
