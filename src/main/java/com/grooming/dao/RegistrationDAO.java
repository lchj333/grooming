package com.grooming.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.grooming.dto.RegisterationDTO;

@Repository
public class RegistrationDAO {
	private final String map = "registMap";
	
	@Inject
	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}
	
	//가게 정보 등록 메소드 
	public void insertShop(RegisterationDTO dto) {
		ss.insert(map+".insertShop", dto);
	}
}
