package com.grooming.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.grooming.dto.BookMarkDTO;

public class BookMarkDAOImple implements BookMarkDAO{

	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}
	
	//찜 한 내용 조회
	@Override
	public List<BookMarkDTO> selectBookMark(BookMarkDTO BookMarkDTO) {
		return ss.selectList("selectBookMark", BookMarkDTO);
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
