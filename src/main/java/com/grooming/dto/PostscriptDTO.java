package com.grooming.dto;

public class PostscriptDTO {
	private int re_num;
	private String mb_id;
	private int de_licencenum;
	private float po_point;
	private String po_con;
	private String po_date;
	
	public PostscriptDTO() {}

	public PostscriptDTO(int re_num, String mb_id, int de_licencenum, float po_point, String po_con, String po_date) {
		super();
		this.re_num = re_num;
		this.mb_id = mb_id;
		this.de_licencenum = de_licencenum;
		this.po_point = po_point;
		this.po_con = po_con;
		this.po_date = po_date;
	}

	public int getRe_num() {
		return re_num;
	}

	public void setRe_num(int re_num) {
		this.re_num = re_num;
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

	public float getPo_point() {
		return po_point;
	}

	public void setPo_point(float po_point) {
		this.po_point = po_point;
	}

	public String getPo_con() {
		return po_con;
	}

	public void setPo_con(String po_con) {
		this.po_con = po_con;
	}

	public String getPo_date() {
		return po_date;
	}

	public void setPo_date(String po_date) {
		this.po_date = po_date;
	}
	
}
