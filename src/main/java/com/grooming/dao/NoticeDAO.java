package com.grooming.dao;

import java.util.HashMap;
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
	// 공지사항 자세히보기
	public NoticeDTO selectOne(int nt_no) {
		return ss.selectOne("selectOneNotice", nt_no);
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
	public void deleteOne(int nt_no) {
		ss.delete("deleteNotice", nt_no);
	}
	// 조회수 올리기
	public void raiseHits(int nt_no) {
		ss.update("raiseHits", nt_no);
	}
	// 게시물의 총 갯수
	public int count() {
		return ss.selectOne("count");
	}
	// 게시물 목록 + 페이징
	public List<NoticeDTO> listPage(int displayPost, int postNum) {
		HashMap<String, Integer> data = new HashMap<String, Integer>();
		data.put("displayPost", displayPost);
		data.put("postNum", postNum);
		return ss.selectList("listPage", data);
	}
	
	
}

