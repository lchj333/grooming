package com.grooming.dto;

public class Loginlog {
	private String mb_id;
	private String ll_log;
	
	// 기본생성자
	public Loginlog() {}

	// 모든항목 추가 생성자
	public Loginlog(String mb_id, String ll_log) {
		super();
		this.mb_id = mb_id;
		this.ll_log = ll_log;
	}

	// getter,setter
	public String getMb_id() {
		return mb_id;
	}

	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}

	public String getLl_log() {
		return ll_log;
	}

	public void setLl_log(String ll_log) {
		this.ll_log = ll_log;
	}
	
	
	
}
