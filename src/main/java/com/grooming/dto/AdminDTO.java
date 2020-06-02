package com.grooming.dto;
// 관리자 정보
public class AdminDTO {
	//매변
	private String ad_id;
	private String ad_pw;
	//생성자
	public AdminDTO() {}	
	public AdminDTO(String ad_id, String ad_pw) {
		this.ad_id = ad_id;
		this.ad_pw = ad_pw;
	}
	//ㄱㅌㅅㅌ
	public String getAd_id() {
		return ad_id;
	}
	public void setAd_id(String ad_id) {
		this.ad_id = ad_id;
	}
	public String getAd_pw() {
		return ad_pw;
	}
	public void setAd_pw(String ad_pw) {
		this.ad_pw = ad_pw;
	}	
}
