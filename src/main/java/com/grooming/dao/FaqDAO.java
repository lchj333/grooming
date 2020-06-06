package com.grooming.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.grooming.dto.FaqDTO;

@Repository
public class FaqDAO {
	
	@Inject
	SqlSession ss;	
	public void SetSs(SqlSession ss) {
		this.ss = ss;
	}
	//c
	public void insertOne(FaqDTO faqdto) {
		ss.insert("insertFaq", faqdto);
	}
	
	//r
	public List<FaqDTO> selectList() {
		return ss.selectList("selectAllFaq");
	}	
	public FaqDTO selectOne(String f_title) {
		return ss.selectOne("selectOnebyTitle", f_title);
	}
	
	//u
	public void updateOne(FaqDTO faqdto) {
		ss.update("updateFaq", faqdto);
	}
	
	//d
	public void deleteOne(String f_title) {
		ss.delete("deleteFaq", f_title);
	}
}
