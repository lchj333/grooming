package com.grooming.dao;

import java.util.List;

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
	
	// 미용사 멤버 전체 조회
	public List<DesignerDTO> selectDesignerAll(){
		return ss.selectList("selectDesignerAll");
	}
	
	// 미용사 신청한 사람 목록 받아오기
	public List<DesignerDTO> designerApplication(){
		return ss.selectList("designerApplication");
	}
	
	// 디자이너 de_approval 승인하는 메소드
	public void designerAgree(DesignerDTO designerDto) {
		ss.update("designerAgree", designerDto);
	}
	
	
}
