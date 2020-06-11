package com.grooming.dto;

public class BookMarkDTO {
	private String mb_id;
	private int de_licencenum;
	
	//기본 생성자
	public BookMarkDTO() {}

	public BookMarkDTO(String mb_id, int de_licencenum) {
		super();
		this.mb_id = mb_id;
		this.de_licencenum = de_licencenum;
	}

	public String getMb_id() {
		return mb_id;
	}
	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}
	public int getDe_licencenum() {
		return de_licencenum;
	}
	public void setDe_licencenum(int de_licencenum) {
		this.de_licencenum = de_licencenum;
	}
	

}
