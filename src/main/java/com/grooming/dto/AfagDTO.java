package com.grooming.dto;
// 문의답변 테이블
public class AfagDTO {
	//매변
	private int in_num;
	private String ad_id;
	private String iq_con;
	//생성자
	public AfagDTO() {}
	public AfagDTO(int in_num, String ad_id, String iq_con) {
		this.in_num = in_num;
		this.ad_id = ad_id;
		this.iq_con = iq_con;
	}	
	//ㄱㅌㅅㅌ
	public int getIn_num() {
		return in_num;
	}
	public void setIn_num(int in_num) {
		this.in_num = in_num;
	}
	public String getAd_id() {
		return ad_id;
	}
	public void setAd_id(String ad_id) {
		this.ad_id = ad_id;
	}
	public String getIq_con() {
		return iq_con;
	}
	public void setIq_con(String iq_con) {
		this.iq_con = iq_con;
	}
}
