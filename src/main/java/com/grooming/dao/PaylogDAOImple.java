package com.grooming.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.grooming.dto.PaylogDTO;

@Repository
public class PaylogDAOImple implements PaylogDAO{
	
	
	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}
	
	//결제 금액, 졀제자 라이센스, 결제 날짜 입력 메소드
	@Override
	public void insertPay(PaylogDTO PaylogDTO) {
		ss.insert("insertPay", PaylogDTO);
		
	}
	@Override
	public List<PaylogDTO> selectAllPay() {
		// TODO Auto-generated method stub
		return null;
	}

}
