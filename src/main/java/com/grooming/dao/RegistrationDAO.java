package com.grooming.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.grooming.dto.RegistrationDTO;

@Repository
public class RegistrationDAO {
	private final String MAPPER = "registrationMapper";
	
	@Inject
	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}
	
	//등록된 가게 리스트 (허가된)
	public List<RegistrationDTO> getList(Map<String, Object> map) {
		
		return ss.selectList(MAPPER+".list", map);
	}
	
	//가게 정보 등록 메소드 
	public void insertShop(RegistrationDTO dto) {
		ss.insert(MAPPER+".insertShop", dto);
	}
	
	//가게 정보 블럭 상태 변경 (관리자에 의한)
	public void changeStateByAdmin(RegistrationDTO dto) {
		ss.update(MAPPER+".BlockByAdmin", dto);
	}
	
	//가게 상세 이미지 추가
	public void insertShopInfoimg(RegistrationDTO dto) {
		ss.insert(MAPPER+".insertShopInfoimg", dto);
	}
	
	//임시 테스트
	public List<RegistrationDTO> testTest(int licencenum) {
		return ss.selectOne(MAPPER+".listAdd_imgs", licencenum);
	}
	
}
