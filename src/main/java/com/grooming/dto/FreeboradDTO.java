package com.grooming.dto;

import java.util.Date;

public class FreeboradDTO {
	private int fb_num;
	private String mb_id;
	private String fb_title;
	private String fb_category;
	private int fb_hits;
	private Date fb_date;
	private int fb_blind;
	private String fb_con;
	private String ab_file;
	
	
	public FreeboradDTO() {}
	
	// 자유게시판 생성자
	public FreeboradDTO(int fb_num, String mb_id, String fb_title, String fb_category, int fb_hits, Date fb_date,
			int fb_blind, String fb_con) {
		super();
		this.fb_num = fb_num;
		this.mb_id = mb_id;
		this.fb_title = fb_title;
		this.fb_category = fb_category;
		this.fb_hits = fb_hits;
		this.fb_date = fb_date;
		this.fb_blind = fb_blind;
		this.fb_con = fb_con;
	}
	
	// 자유게시판 이미지 생성자
	public FreeboradDTO(int fb_num, String ab_file) {
		super();
		this.fb_num = fb_num;
		this.ab_file = ab_file;
	}
	

	public int getFb_num() {
		return fb_num;
	}

	public void setFb_num(int fb_num) {
		this.fb_num = fb_num;
	}

	public String getMb_id() {
		return mb_id;
	}

	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}

	public String getFb_title() {
		return fb_title;
	}

	public void setFb_title(String fb_title) {
		this.fb_title = fb_title;
	}

	public String getFb_category() {
		return fb_category;
	}

	public void setFb_category(String fb_category) {
		this.fb_category = fb_category;
	}

	public int getFb_hits() {
		return fb_hits;
	}

	public void setFb_hits(int fb_hits) {
		this.fb_hits = fb_hits;
	}

	public Date getFb_date() {
		return fb_date;
	}

	public void setFb_date(Date fb_date) {
		this.fb_date = fb_date;
	}

	public int getFb_blind() {
		return fb_blind;
	}

	public void setFb_blind(int fb_blind) {
		this.fb_blind = fb_blind;
	}

	public String getFb_con() {
		return fb_con;
	}

	public void setFb_con(String fb_con) {
		this.fb_con = fb_con;
	}

	public String getAb_file() {
		return ab_file;
	}

	public void setAb_file(String ab_file) {
		this.ab_file = ab_file;
	}
	
}
