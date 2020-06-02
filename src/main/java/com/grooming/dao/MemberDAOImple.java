package com.grooming.dao;


import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.grooming.dto.MemberVO;


/*
@Repository 어노테이션은 DAO에 특화된 어노테이션이다. 
@Component 어노테이션을 써도 상관없지만, DAO 클래스들에 @Repository 어노테이션을 사용함으로써
@Component 어노테션이 가진 특성과 함께, DAO의 메소드에서 발생할 수 있는 unchecked exception들을 
스프링의 DataAccessException으로 처리할 수 있는 장점 또한 갖을 수 있다.
 */
@Repository
public class MemberDAOImple implements MemberDAO{
	private static final String NAMESPACE = "com.exam.MemberMapper";
	
	@Inject
	SqlSession session;

	@Override
	public String getTime() {
//		return session.selectOne("getTime");
		return session.selectOne(NAMESPACE+".getTime");
	}

	@Override
	public void insertMember(MemberVO mvo) {
//		session.insert("insertMember", mvo);
//		session.insert(NAMESPACE+".insertMember", mvo);
	}

}
