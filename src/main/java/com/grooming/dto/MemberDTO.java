package com.grooming.dto;

import java.util.Date;

public class MemberDTO {
	private String mb_id;
	private String mb_pw;
	private String mb_name;
	private String mb_birth;
	private String mb_gender;
	private String mb_email;
	private String mb_emailck;
	private String mb_phone;
	private String mb_address1;
	private String mb_address2;
	private String mb_check;
	private int mb_block;
	private Date mb_joindate;
	private String mb_area;
	
	// 기본생성자
	public MemberDTO() {}

	// 모든항목이 들어가있는 생성자
	public MemberDTO(String mb_id, String mb_pw, String mb_name, String mb_birth, String mb_gender, String mb_email,
			String mb_emailck, String mb_phone, String mb_address1, String mb_address2, String mb_check, int mb_block,
			Date mb_joindate, String mb_area) {
		super();
		this.mb_id = mb_id;
		this.mb_pw = mb_pw;
		this.mb_name = mb_name;
		this.mb_birth = mb_birth;
		this.mb_gender = mb_gender;
		this.mb_email = mb_email;
		this.mb_emailck = mb_emailck;
		this.mb_phone = mb_phone;
		this.mb_address1 = mb_address1;
		this.mb_address2 = mb_address2;
		this.mb_check = mb_check;
		this.mb_block = mb_block;
		this.mb_joindate = mb_joindate;
		this.mb_area = mb_area;
	}

	// getter,setter
	public String getMb_id() {
		return mb_id;
	}

	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}

	public String getMb_pw() {
		return mb_pw;
	}

	public void setMb_pw(String mb_pw) {
		this.mb_pw = mb_pw;
	}

	public String getMb_name() {
		return mb_name;
	}

	public void setMb_name(String mb_name) {
		this.mb_name = mb_name;
	}

	public String getMb_birth() {
		return mb_birth;
	}

	public void setMb_birth(String mb_birth) {
		this.mb_birth = mb_birth;
	}

	public String getMb_gender() {
		return mb_gender;
	}

	public void setMb_gender(String mb_gender) {
		this.mb_gender = mb_gender;
	}

	public String getMb_email() {
		return mb_email;
	}

	public void setMb_email(String mb_email) {
		this.mb_email = mb_email;
	}

	public String getMb_emailck() {
		return mb_emailck;
	}

	public void setMb_emailck(String mb_emailck) {
		this.mb_emailck = mb_emailck;
	}

	public String getMb_phone() {
		return mb_phone;
	}

	public void setMb_phone(String mb_phone) {
		this.mb_phone = mb_phone;
	}

	public String getMb_address1() {
		return mb_address1;
	}

	public void setMb_address1(String mb_address1) {
		this.mb_address1 = mb_address1;
	}

	public String getMb_address2() {
		return mb_address2;
	}

	public void setMb_address2(String mb_address2) {
		this.mb_address2 = mb_address2;
	}

	public String getMb_check() {
		return mb_check;
	}

	public void setMb_check(String mb_check) {
		this.mb_check = mb_check;
	}

	public int getMb_block() {
		return mb_block;
	}

	public void setMb_block(int mb_block) {
		this.mb_block = mb_block;
	}

	public Date getMb_joindate() {
		return mb_joindate;
	}

	public void setMb_joindate(Date mb_joindate) {
		this.mb_joindate = mb_joindate;
	}

	public String getMb_area() {
		return mb_area;
	}

	public void setMb_area(String mb_area) {
		this.mb_area = mb_area;
	}

	
	
	
	
}
