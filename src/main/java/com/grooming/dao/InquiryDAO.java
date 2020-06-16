package com.grooming.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.grooming.dto.InquiryDTO;
import com.grooming.dto.NoticeDTO;

@Repository
public class InquiryDAO {
	
	@Inject
	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}
	//c
	public void insertOne(InquiryDTO dto) {
		ss.insert("insertInquiry", dto);
	}
	
	//r
	public List<InquiryDTO> selectList(){
		return ss.selectList("selectAllInquiry");
	}
	public InquiryDTO selectOne(int in_num) {
		return ss.selectOne("selectOneInquiryByin_num", in_num);
	}
	//u
	public void updateOne(InquiryDTO dto) {
		ss.update("updateInquiry", dto);
	}
	//d
	public void deleteOne(int in_num) {
		ss.delete("deleteInquiry", in_num);
	}
	
	// 게시물의 총 갯수
	public int count() {
		return ss.selectOne("inquiryCount");
	}
	
	// 해당회원이 쓴 게시물의 총 갯수
	public int count2(String mb_id) {
		return ss.selectOne("selectedCount", mb_id);
	}
	
	// 게시물 목록 + 페이징
	public List<InquiryDTO> listPage(int displayPost, int postNum) {
		HashMap<String, Integer> data = new HashMap<String, Integer>();
		data.put("displayPost", displayPost);
		data.put("postNum", postNum);
		return ss.selectList("inquiryListPage", data);
	}
}
