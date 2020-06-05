package com.grooming.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.grooming.dto.DesignerDTO;
import com.grooming.dto.PaylogDTO;

public class DesinerDAOImple implements DesinerDAO{

	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}

	//결제내역 테이블에 값 넣기
	@Override
	public void insertMoney(DesignerDTO DesignerDTO) {
		// TODO Auto-generated method stub
		ss.insert("insertMoney", DesignerDTO);
	//Desiner 테이블에 포인트 업데이트하기
	}
	//금액 충전
	@Override
	public void updateDes(DesignerDTO DesignerDTO) {
		// TODO Auto-generated method stub
		ss.update("updateDes", DesignerDTO);
	}
	@Override
	public List<DesignerDTO> selectAllDes() {
		// TODO Auto-generated method stub
		return ss.selectList("selectAllDes");
	}
	@Override
	public DesignerDTO selectOneDesi(int no) {
		// TODO Auto-generated method stub
		return ss.selectOne("selectOneDesi", no);
	}

}
