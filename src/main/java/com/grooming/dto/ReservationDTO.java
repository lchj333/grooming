package com.grooming.dto;

import java.util.Date;
// 예약 정보 테이블
public class ReservationDTO {
	//매변
	private int re_num;
	private int de_licencenum;
	private String mb_id;
	private String re_approval;
	private Date re_date;
	private Date re_nowdate;
	private String re_species;
	private String re_weight;
	private String re_cut;
	
	private String bc_con;
	private String ref_shopname;
	private String mb_phone;
	
	//생성자
	public ReservationDTO() {}
	public ReservationDTO(int re_num, int de_licencenum, String mb_id, String re_approval, Date re_date,
			Date re_nowdate, String re_species, String re_weight, String re_cut) {
		this.re_num = re_num;
		this.de_licencenum = de_licencenum;
		this.mb_id = mb_id;
		this.re_approval = re_approval;
		this.re_date = re_date;
		this.re_nowdate = re_nowdate;
		this.re_species = re_species;
		this.re_weight = re_weight;
		this.re_cut = re_cut;
	}
	
	// 예약취소 피드백
	public ReservationDTO(int re_num, String bc_con) {
		super();
		this.re_num = re_num;
		this.bc_con = bc_con;
	}
	//ㄱㅌㅅㅌ
	public int getRe_num() {
		return re_num;
	}
	public void setRe_num(int re_num) {
		this.re_num = re_num;
	}
	public int getDe_licencenum() {
		return de_licencenum;
	}
	public void setDe_licencenum(int de_licencenum) {
		this.de_licencenum = de_licencenum;
	}
	public String getMb_id() {
		return mb_id;
	}
	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}
	public String getRe_approval() {
		return re_approval;
	}
	public void setRe_approval(String re_approval) {
		this.re_approval = re_approval;
	}
	public Date getRe_date() {
		return re_date;
	}
	public void setRe_date(Date re_date) {
		this.re_date = re_date;
	}
	public Date getRe_nowdate() {
		return re_nowdate;
	}
	public void setRe_nowdate(Date re_nowdate) {
		this.re_nowdate = re_nowdate;
	}
	public String getRe_species() {
		return re_species;
	}
	public void setRe_species(String re_species) {
		this.re_species = re_species;
	}
	public String getRe_weight() {
		return re_weight;
	}
	public void setRe_weight(String re_weight) {
		this.re_weight = re_weight;
	}
	public String getRe_cut() {
		return re_cut;
	}
	public void setRe_cut(String re_cut) {
		this.re_cut = re_cut;
	}
	
	public String getBc_con() {
		return bc_con;
	}
	public void setBc_con(String bc_con) {
		this.bc_con = bc_con;
	}
	public String getRef_shopname() {
		return ref_shopname;
	}
	public void setRef_shopname(String ref_shopname) {
		this.ref_shopname = ref_shopname;
	}
	public String getMb_phone() {
		return mb_phone;
	}
	public void setMb_phone(String mb_phone) {
		this.mb_phone = mb_phone;
	}
	
	
}
