package com.grooming.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.grooming.dto.PaylogDTO;

public class PaylogDAOImple implements PaylogDAO{

	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}
	
	@Override
	public List<PaylogDTO> selectAllIPayed(PaylogDTO paylogDTO) {
		// TODO Auto-generated method stub
		return ss.selectList("selectAllIPayed", paylogDTO);
	}
	
}
