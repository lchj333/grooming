package com.grooming.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.grooming.dto.LoginDTO;

@Repository
public class LoginDAO {
	
	@Inject
	SqlSession ss;

	public void setSs(SqlSession ss) {
		this.ss = ss;
	}
	
	// ID,PW 존재여부 처리 메소드
	public int loginCheck(LoginDTO loginDto) {
		return ss.selectOne("loginCheck", loginDto);
	}
	
	
	// 로그인 처리 메소드
	public LoginDTO loginOk(LoginDTO loginDto) {
		return ss.selectOne("loginOk", loginDto);
	}
	
}
