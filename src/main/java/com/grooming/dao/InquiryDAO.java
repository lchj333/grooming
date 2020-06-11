package com.grooming.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.grooming.dto.InquiryDTO;

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
	
}
