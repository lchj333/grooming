package com.grooming.control;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.grooming.dao.MemberDAO;
import com.grooming.dto.MemberVO;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MemberDAOTest {
	@Inject
	private MemberDAO memberDao;
	
	@Test
	public void testTime() {
		System.out.println(memberDao.getTime());
	}
	
	@Test
	public void testInsertMember() {
//		MemberVO mvo = new MemberVO();
//		mvo.setUid("uid");
//		mvo.setPwd("pwd");
//		mvo.setUsername("sername");
//		mvo.setEmail("email@email");
	}
}
