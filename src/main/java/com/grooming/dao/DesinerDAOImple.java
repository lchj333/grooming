package com.grooming.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.grooming.dto.DesignerDTO;
import com.grooming.dto.PaylogDTO;

@Repository
public class DesinerDAOImple implements DesinerDAO{
	@Inject
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
	//금액 충전(디자이너 테이블에)
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
	public void updateDesMinus(DesignerDTO DesignerDTO) {
		// TODO Auto-generated method stub
		ss.update("updateDesMinus", DesignerDTO);
	}
	@Override
	public List<DesignerDTO> selectPointOne(DesignerDTO DesignerDTO) {
		// TODO Auto-generated method stub
		return ss.selectList("selectPointOne", DesignerDTO);
	}


}
