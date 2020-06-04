package com.grooming.dao;

import java.util.List;

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
	
	//가게 정보 등록 메소드 
	public void insertShop(RegistrationDTO dto) {
		ss.insert(MAPPER+".insertShop", dto);
	}
	
	//등록된 가게 블럭상태 해제
//	public void name() {
//		if() {
//			System.out.println("삭제 성공");
//		}else System.out.println("삭제 실패");
//	}
	
	//가게 상세 이미지 추가
	public void insertShopInfoimg(RegistrationDTO dto) {
		ss.insert(MAPPER+".insertShopInfoimg", dto);
	}
	
	//임시 테스트
	public List<RegistrationDTO> testTest(int licencenum) {
		return ss.selectOne(MAPPER+".listAdd_imgs", licencenum);
	}
}
