package com.grooming.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

import com.grooming.dto.BecauseDTO;


// 예약 취소 이유 DAO
public class BecauseDAO {

	@Inject
	SqlSession ss;
	
	// 예약 취소 이유 가져오는 부분
		public BecauseDTO cancelReason(BecauseDTO bdto) {
			return ss.selectOne("cancelReason", bdto);
		}

}
