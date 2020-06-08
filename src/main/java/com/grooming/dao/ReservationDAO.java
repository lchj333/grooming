package com.grooming.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import com.grooming.dto.ReservationDTO;

//예약 관련 DAO
@Repository
public class ReservationDAO {
	private final String MAPPER = "reservationMapper";
	
	@Inject
	SqlSession ss;
	
	//현재의 유효한 예약 리스트 (사용자)
	public List<ReservationDTO> selectListByCustomer(ReservationDTO dto) {
		return ss.selectList(MAPPER+".getReservList", dto);
	}
	
	//예약 내역 리스트 (미용사)
	public List<ReservationDTO> selectListByCutter(String mb_id) {
		return ss.selectList(MAPPER+".getAllMyList", mb_id);
	}
	
	//예약 상세내용
	public ReservationDTO selectOneByNum(int num) {
		return ss.selectOne(MAPPER+".selectByNum", num);
	}
	
	//예약 상태 변경 (승인 | 미승인) +@피드백
	public void checkReserv(ReservationDTO dto) {
		//승인 or 미승인 (기본값 'U')
		ss.update(MAPPER+".checkReserv", dto);
		
		//미 승인을 입력 할 경우 추가 내용 삽입
		if(dto.getRe_approval() != null) {
			ss.insert(MAPPER+".insertFeedBack", dto);
		}
	}
	
	//예약 작성
	public void insertReserv(ReservationDTO dto) {
		ss.insert(MAPPER+".insertReserv", dto);
	}
	
}
