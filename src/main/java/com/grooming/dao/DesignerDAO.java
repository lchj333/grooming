package com.grooming.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.grooming.dto.DesignerDTO;

@Repository
public class DesignerDAO {
	
	@Inject
	SqlSession ss;

	public void setSs(SqlSession ss) {
		this.ss = ss;
	}
	
	// 미용사 정보 추가 메소드
	public void joinDesigner(DesignerDTO designerDto) {
		ss.insert("joinDesigner", designerDto);
	}
	
}
