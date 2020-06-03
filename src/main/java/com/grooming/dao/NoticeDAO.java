package com.grooming.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.grooming.dto.NoticeDTO;


@Repository
public class NoticeDAO {
	
	@Inject
	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}	
	// 공지사항 전체 조회하기
	public List<NoticeDTO> selectList() {
		// TODO Auto-generated method stub
		return ss.selectList("selectAllNotice");
	}	
	// 공지사항 추가(작성)
	public void insertOne(NoticeDTO noticedto) {
		ss.insert("insertNotice", noticedto);
	}	
	// 공지사항 수정
	public void updateOne(NoticeDTO noticedto) {
		ss.update("updateNotice", noticedto);
	}
	// 공지사항 삭제
	public void deleteOne(NoticeDTO noticedto) {
		ss.delete("deleteNotice", noticedto);
	}

	public void selectOne() {
		// 필요없는기능
	}
}

