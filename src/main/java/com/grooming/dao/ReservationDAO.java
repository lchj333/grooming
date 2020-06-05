package com.grooming.dao;

import java.util.List;
import java.util.Map;

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
	
	//현재의 유효한 예약 목록
	public List<ReservationDTO> selectListByCustomer(String mb_id) {
		return ss.selectList(MAPPER+".getReservList", mb_id);
	}
	
	//예약 내역 가져오기
	public List<ReservationDTO> selectListByCutter(Map<String, Object> map) {
		return ss.selectList(MAPPER+".getAllMyList", map);
	}
	
}
