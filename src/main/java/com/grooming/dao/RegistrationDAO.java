package com.grooming.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.grooming.dto.RegistrationDTO;
import com.grooming.dto.ShopListDTO;

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
	//가게 상세 이미지 추가
	public void insertShopInfoimg(RegistrationDTO dto) {
		ss.insert(MAPPER+".insertShopInfoimg", dto);
	}
	
	//가게 정보 블럭 상태 변경 (관리자에 의한)
	public void changeStateByAdmin(RegistrationDTO dto) {
		ss.update(MAPPER+".BlockByAdmin", dto);
	}
	
	//서치 가게 리스트
	public List<ShopListDTO> searchShop(Map<String, String> map){
		return ss.selectList(MAPPER+".searchShop", map);
	}
	
	//샵 상세 정보
	public RegistrationDTO infoShop(int de_licencenum) {
		return ss.selectOne(MAPPER+".shopDetail", de_licencenum);
	}
	
	//샵 상세 이미지들..
	public List<String> infoImgs(int de_licencenum) {
		return ss.selectList(MAPPER+".infoImgs", de_licencenum);
	}
	
	// 모든 가게
//	public List<ShopListDTO> getList(Map<String, String> map) {
//		return ss.selectList(MAPPER+".searchShop", map);
//	}
//	
}
