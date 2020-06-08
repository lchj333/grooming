package com.grooming.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.grooming.dto.MemberDTO;


@Repository
public class MemberDAO {
	
	@Inject
	SqlSession ss;

	public void setSs(SqlSession ss) {
		this.ss = ss;
	}
	
	// 회원가입 메소드
	public void joinMember(MemberDTO memberDto) {
		ss.insert("joinMember", memberDto);
	}
	
	// 회원전체 전체 조회 메소드
	public List<MemberDTO> selectMemberAll(){
		return ss.selectList("selectMemberAll");
	}
	
	// ID로 회원 개별 조회 메소드
	public MemberDTO selectOne(String mb_id) {
		return ss.selectOne("selectMemberOne", mb_id);
	}
	
	// ID 중복 체크
	public int idCheck(String mb_id) {
		return ss.selectOne("idCheck", mb_id);
	}
	
	// ID 찾기(name,email 일치여부)
	public int idFind(MemberDTO memberDto) {
		return ss.selectOne("idFind", memberDto);
	}
	
	// PW 찾기(id,email 일치여부)
	public int idPw(MemberDTO memberDto) {
		return ss.selectOne("idPw", memberDto);
	}
	
	// 미용사 사용신청 메소드
	public void designerCheck(MemberDTO memberDto) {
		ss.update("designerCheck", memberDto);
	}

	
	
	
	
}
