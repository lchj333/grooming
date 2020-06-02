package com.grooming.dao;

import com.grooming.dto.MemberVO;

public interface MemberDAO {
	public String getTime();
	public void insertMember(MemberVO mvo);
}
