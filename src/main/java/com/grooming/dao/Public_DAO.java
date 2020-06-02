package com.grooming.dao;

import java.util.List;


public interface Public_DAO {
	public void selectOne();
	public List<Object> selectList();
	public void insertOne(Object obj);
	public void updateOne(Object obj);
	public void deleteOne(Object obj);
	
	public default List<Object> selectList2Page (int pno) {
		//페이징 처리 메소드 -  직접 구현(오버라이드)하여 사용
		System.out.println("페이징처리 오버라이드 요망."+this.getClass().getName());
		return null;
	}
}
