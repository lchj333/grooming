package com.grooming.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.grooming.dto.AdminDTO;

@Repository
public class AdminDAO {
	
	@Inject
	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}
	
	// 관리자 ID,PW 존재여부 처리 메소드
	public int adminCheck(AdminDTO adminDto) {
		return ss.selectOne("adminCheck", adminDto);
	}
		
		
	// 관리자 로그인 처리 메소드
	public AdminDTO adminloginOk(AdminDTO adminDto) {
		return ss.selectOne("adminloginOk", adminDto);
	}
	
}
