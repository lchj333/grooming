package com.grooming.dto;

import java.util.Date;

//공지사항
public class NoticeDTO {
	//매변
	private int nt_no;
	private String nt_title;
	private String ad_id;
	private String nt_con;
	private int nt_hits;
	private Date nt_regdate;
	
	//생성자
	public NoticeDTO() {}
	public NoticeDTO(int nt_no, String nt_title, String ad_id, String nt_con, int nt_hits, Date nt_regdate) {
		super();
		this.nt_no = nt_no;
		this.nt_title = nt_title;
		this.ad_id = ad_id;
		this.nt_con = nt_con;
		this.nt_hits = nt_hits;
		this.nt_regdate = nt_regdate;
	}
	//ㄱㅌㅅㅌ
	public int getNt_no() {
		return nt_no;
	}
	public void setNt_no(int nt_no) {
		this.nt_no = nt_no;
	}
	public String getNt_title() {
		return nt_title;
	}
	public void setNt_title(String nt_title) {
		this.nt_title = nt_title;
	}
	public String getAd_id() {
		return ad_id;
	}
	public void setAd_id(String ad_id) {
		this.ad_id = ad_id;
	}
	public String getNt_con() {
		return nt_con;
	}
	public void setNt_con(String nt_con) {
		this.nt_con = nt_con;
	}
	public int getNt_hits() {
		return nt_hits;
	}
	public void setNt_hits(int nt_hits) {
		this.nt_hits = nt_hits;
	}
	public Date getNt_regdate() {
		return nt_regdate;
	}
	public void setNt_regdate(Date nt_regdate) {
		this.nt_regdate = nt_regdate;
	}	
}
