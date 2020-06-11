package com.grooming.dto;

import java.util.Date;
// 문의하기 게시판
public class InquiryDTO {
	//매변
	private int in_num;
	private String mb_id;
	private String ad_id;
	private String in_title;
	private String in_con;
	private Date in_nowdate;
	private String in_category;
	
	private String at_file;
	//생성자
	public InquiryDTO() {}
	public InquiryDTO(int in_num, String mb_id, String ad_id, String in_title, String in_con, Date in_nowdate, String in_category) {
		this.in_num = in_num;
		this.mb_id = mb_id;
		this.ad_id = ad_id;
		this.in_title = in_title;
		this.in_con = in_con;
		this.in_nowdate = in_nowdate;
		this.in_category = in_category;
	}
	
	// 문의하기첨부파일
	public InquiryDTO(int in_num, String at_file) {
		super();
		this.in_num = in_num;
		this.at_file = at_file;
	}
	//ㄱㅌㅅㅌ
	public int getIn_num() {
		return in_num;
	}
	public void setIn_num(int in_num) {
		this.in_num = in_num;
	}
	public String getMb_id() {
		return mb_id;
	}
	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}
	public String getAd_id() {
		return ad_id;
	}
	public void setAd_id(String ad_id) {
		this.ad_id = ad_id;
	}
	public String getIn_title() {
		return in_title;
	}
	public void setIn_title(String in_title) {
		this.in_title = in_title;
	}
	public String getIn_con() {
		return in_con;
	}
	public void setIn_con(String in_con) {
		this.in_con = in_con;
	}
	public Date getIn_nowdate() {
		return in_nowdate;
	}
	public void setIn_nowdate(Date in_nowdate) {
		this.in_nowdate = in_nowdate;
	}
	public String getIn_category() {
		return in_category;
	}
	public void setIn_category(String in_category) {
		this.in_category = in_category;
	}
	
	
	public String getAt_file() {
		return at_file;
	}
	public void setAt_file(String at_file) {
		this.at_file = at_file;
	}
}
