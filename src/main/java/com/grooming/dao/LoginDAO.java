package com.grooming.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.grooming.dto.LoginDTO;
import com.grooming.dto.MemberDTO;

@Repository
public class LoginDAO {
	
	@Inject
	SqlSession ss;

	public void setSs(SqlSession ss) {
		this.ss = ss;
	}
	
	// ID,PW 존재여부 처리 메소드
	public int loginCheck(MemberDTO memberDto) {
		return ss.selectOne("loginCheck", memberDto);
	}
	
	
	// 로그인 처리 메소드
	public MemberDTO loginOk(MemberDTO memberDto) {
		return ss.selectOne("loginOk", memberDto);
	}
	
}
