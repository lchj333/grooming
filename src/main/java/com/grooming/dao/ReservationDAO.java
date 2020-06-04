package com.grooming.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.grooming.dto.ReservationDTO;

//예약 관련 DAO
@Repository
public class ReservationDAO {
	private final String MAPPER = "reservationMapper";
	
	@Inject
	SqlSession ss;
	
	//사용자(가 보는) 예약 목록
	public List<ReservationDTO> selectListByCustomer(String mb_id) {
		return ss.selectList(MAPPER+".ListByCustomer", mb_id);
	}
	
	//미용사(가 보는) 예약 대기 목록
	public List<ReservationDTO> selectListByCutter(int de_licencenum) {
		return ss.selectList(MAPPER+".ListByCutter", de_licencenum);
	}
}
