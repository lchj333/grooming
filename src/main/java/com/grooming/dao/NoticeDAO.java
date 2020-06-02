package com.grooming.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.grooming.dto.NoticeDTO;


@Repository
public class NoticeDAO implements Public_DAO {
	
	@Inject
	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}	
	// 공지사항 전체 조회하기
	public List<Object> selectList() {
		// TODO Auto-generated method stub
		return ss.selectList("selectAllNotice");
	}	
	// 공지사항 추가(작성)
	@Override
	public void insertOne(Object obj) {
		ss.insert("insertNotice", (NoticeDTO)obj);
	}	
	// 공지사항 수정
	@Override
	public void updateOne(Object obj) {
		ss.update("updateNotice", (NoticeDTO)obj);
	}	
	// 공지삭제
	@Override
	public void deleteOne(Object obj) {
		ss.delete("deleteNotice", (NoticeDTO)obj);
	}

	@Override
	public void selectOne() {
		// 필요없는기능
	}
}

