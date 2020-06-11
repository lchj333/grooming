package com.grooming.dto;

import java.util.Date;

public class ChatlogDTO {
	private String mb_id;
	private String ch_log;
	private Date ch_lastchat;
	
	// 기본생성자
	public ChatlogDTO() {}

	// 모든항목 추가 생성자
	public ChatlogDTO(String mb_id, String ch_log, Date ch_lastchat) {
		super();
		this.mb_id = mb_id;
		this.ch_log = ch_log;
		this.ch_lastchat = ch_lastchat;
	}
	
	// getter,setter
	public String getMb_id() {
		return mb_id;
	}

	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}

	public String getCh_log() {
		return ch_log;
	}

	public void setCh_log(String ch_log) {
		this.ch_log = ch_log;
	}

	public Date getCh_lastchat() {
		return ch_lastchat;
	}

	public void setCh_lastchat(Date ch_lastchat) {
		this.ch_lastchat = ch_lastchat;
	}
	
	
	
}
