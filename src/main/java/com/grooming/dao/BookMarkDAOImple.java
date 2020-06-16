package com.grooming.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.grooming.dto.BookMarkDTO;
import com.grooming.dto.RegistrationDTO;

@Repository
public class BookMarkDAOImple implements BookMarkDAO{
	
	@Inject
	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}
	
	//찜 한 내용 조회
	@Override
	public List<RegistrationDTO> selectBookMark(String mb_id) {
		return ss.selectList("selectBookMark", mb_id);
	}
	
	//찜 하기
	@Override
	public void insertBookmark(BookMarkDTO BookMarkDTO) {
		ss.insert("insertBookmark", BookMarkDTO);
	}
	//찜 삭제
	@Override
	public void deleteBookMark(BookMarkDTO BookMarkDTO) {
		ss.delete("deleteBookMark", BookMarkDTO);
	}

	
}
