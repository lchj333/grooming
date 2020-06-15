package com.grooming.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.grooming.dto.PaylogDTO;
@Repository
public class PaylogDAOImple implements PaylogDAO{
	@Inject
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
