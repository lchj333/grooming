package com.grooming.dto;

import java.util.Date;

//등록테이블(판매자페이지)
public class RegistrationDTO {
	//매변
	private int de_licencenum;
	private String ref_shopname;
	private String reg_shopaddress;
	private int reg_price;
	private String reg_con;
	private Date reg_date;
	private int reg_block;
	private String reg_img;
	
	private String reg_addimg;
	
	//생성자
	public RegistrationDTO() {}
	
	public RegistrationDTO(int de_licencenum, String ref_shopname, String reg_shopaddress,
				int reg_price, String reg_con, String reg_img) {
		super();
		this.de_licencenum = de_licencenum;
		this.ref_shopname = ref_shopname;
		this.reg_shopaddress = reg_shopaddress;
		this.reg_price = reg_price;
		this.reg_con = reg_con;
		this.reg_img = reg_img;
	}

	public RegistrationDTO(int de_licencenum, String ref_shopname, String reg_shopaddress,
				int reg_price, String reg_con, Date reg_date, int reg_block, String reg_img) {
		this.de_licencenum = de_licencenum;
		this.ref_shopname = ref_shopname;
		this.reg_shopaddress = reg_shopaddress;
		this.reg_price = reg_price;
		this.reg_con = reg_con;
		this.reg_date = reg_date;
		this.reg_block = reg_block;
		this.reg_img = reg_img;
	}	
	//디테일 이미지
	public RegistrationDTO(int de_licencenum, String reg_addimg) {
		this.de_licencenum = de_licencenum;
		this.reg_addimg = reg_addimg;
	}
	
	//ㄱㅌㅅㅌ
	public int getDe_licencenum() {
		return de_licencenum;
	}
	public void setDe_licencenum(int de_licencenum) {
		this.de_licencenum = de_licencenum;
	}
	public String getRef_shopname() {
		return ref_shopname;
	}
	public void setRef_shopname(String ref_shopname) {
		this.ref_shopname = ref_shopname;
	}
	public String getReg_shopaddress() {
		return reg_shopaddress;
	}
	public void setReg_shopaddress(String reg_shopaddress) {
		this.reg_shopaddress = reg_shopaddress;
	}
	public int getReg_price() {
		return reg_price;
	}
	public void setReg_price(int reg_price) {
		this.reg_price = reg_price;
	}
	public String getReg_con() {
		return reg_con;
	}
	public void setReg_con(String reg_con) {
		this.reg_con = reg_con;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public int getReg_block() {
		return reg_block;
	}
	public void setReg_block(int reg_block) {
		this.reg_block = reg_block;
	}
	public String getReg_img() {
		return reg_img;
	}
	public void setReg_img(String reg_img) {
		this.reg_img = reg_img;
	}
	public String getReg_addimg() {
		return reg_addimg;
	}
	public void setReg_addimg(String reg_addimg) {
		this.reg_addimg = reg_addimg;
	}
}
