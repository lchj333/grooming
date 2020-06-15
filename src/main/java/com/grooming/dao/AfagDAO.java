package com.grooming.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.grooming.dto.AfagDTO;

@Repository
public class AfagDAO {
	
	@Inject
	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss; 
	}
	
	//댓글 보기
	public AfagDTO selectOne(int in_num) {
		return ss.selectOne("selectAfag", in_num);
	}
	
	//댓글 작성하기
	public void insertOne(AfagDTO dto) {
		ss.insert("insertAfag", dto);
	}
	
	// 댓글 수정하기
	public void updateOne(AfagDTO dto) {
		ss.update("updateAfag", dto);
	}
	
	// 댓글 삭제하기
	public void deleteOne(int in_num) {
		ss.delete("deleteAfag", in_num);
	}
	
}
