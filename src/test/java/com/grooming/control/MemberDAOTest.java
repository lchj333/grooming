package com.grooming.control;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.grooming.dao.MemberDAO;
import com.grooming.dto.MemberDTO;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MemberDAOTest {
	@Inject
	private MemberDAO memberDao;
	
//	@Test
//	public void testInsertMember() {
//		MemberDTO memberDto = new MemberDTO();
//		memberDto.setMb_id("123sad2q3sd");
//		memberDto.setMb_pw("234234");
//		memberDto.setMb_name("야스오");
//		memberDto.setMb_birth("991122");
//		memberDto.setMb_gender("M");
//		memberDto.setMb_email("dddd@dddd.ddd");
//		memberDto.setMb_emailck("Y");
//		memberDto.setMb_phone("010-7777-7777");
//		memberDto.setMb_address1("주소1");
//		memberDto.setMb_address2("주소2");
//		memberDto.setMb_area("선호주소");
//		
//		memberDao.joinMember(memberDto);
//		
//		System.out.println("회원가입 성공");
//	}
	
//	@Test
//	public void selectAll() {
//		List<MemberDTO> list = memberDao.selectMemberAll();
//		
//		for(MemberDTO dto : list) {
//			System.out.println(dto.getMb_id());
//		}
//	}
	
//	@Test
//	public void selectOne() {
//		
//		MemberDTO dto = memberDao.selectOne("bbbb");
//		
//		
//		
//		System.out.println(dto.getMb_id() +"\n" +dto.getMb_address1() +
//				"\n" + dto.getMb_address2()+ "\n" + dto.getMb_email() +
//				"\n" + dto.getMb_gender());
//		
//	}
	
	
	
}
