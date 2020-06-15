package com.grooming.dto;
//자유게시판-댓글

import java.util.Date;

public class CommentDTO {
	//매변
	private int fb_num;
	private String mb_id;
	private String co_con;
	private Date co_date;
	private int co_blind;
	//생성자
	public CommentDTO() {}
	public CommentDTO(int fb_num, String mb_id, String co_con, Date co_date, int co_blind) {
		super();
		this.fb_num = fb_num;
		this.mb_id = mb_id;
		this.co_con = co_con;
		this.co_date = co_date;
		this.co_blind = co_blind;
	}
	//ㄱㅌㅅㅌ
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
	public String getCo_con() {
		return co_con;
	}
	public void setCo_con(String co_con) {
		this.co_con = co_con;
	}
	public Date getCo_date() {
		return co_date;
	}
	public void setCo_date(Date co_date) {
		this.co_date = co_date;
	}
	public int getCo_blind() {
		return co_blind;
	}
	public void setCo_blind(int co_blind) {
		this.co_blind = co_blind;
	}
}
