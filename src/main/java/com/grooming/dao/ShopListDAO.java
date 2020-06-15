package com.grooming.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.grooming.dto.ShopListDTO;

@Repository
public class ShopListDAO {

	@Inject
	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}
	
	//이름 검색 시 주소 뽑아옴
	public List<ShopListDTO> searchInfo(ShopListDTO dto){
		return ss.selectOne("selectMapOne", dto);
	}
	
}
