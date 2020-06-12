package com.grooming.dto;

public class ShopListDTO {
	private int de_licencenum;
	private String ref_shopname;
	private String reg_shopaddress;
	private int reg_price;
	private String reg_img;
	
	private String mb_id;
	private String mb_phone;

	public ShopListDTO() {}
	public ShopListDTO(int de_licencenum, String mb_id) {
		super();
		this.de_licencenum = de_licencenum;
		this.mb_id = mb_id;
	}
	
	public ShopListDTO(String mb_id, String mb_phone) {
		super();
		this.mb_id = mb_id;
		this.mb_phone = mb_phone;
	}
	
	public ShopListDTO(int de_licencenum, String ref_shopname, String reg_shopaddress, int reg_price, String reg_img,
			String mb_phone) {
		super();
		this.de_licencenum = de_licencenum;
		this.ref_shopname = ref_shopname;
		this.reg_shopaddress = reg_shopaddress;
		this.reg_price = reg_price;
		this.reg_img = reg_img;
		this.mb_phone = mb_phone;
	}
	
	public ShopListDTO(int de_licencenum, String ref_shopname, String reg_shopaddress, int reg_price, String reg_img,
			String mb_id, String mb_phone) {
		super();
		this.de_licencenum = de_licencenum;
		this.ref_shopname = ref_shopname;
		this.reg_shopaddress = reg_shopaddress;
		this.reg_price = reg_price;
		this.reg_img = reg_img;
		this.mb_id = mb_id;
		this.mb_phone = mb_phone;
	}
	
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
	public String getReg_img() {
		return reg_img;
	}
	public void setReg_img(String reg_img) {
		this.reg_img = reg_img;
	}
	public String getMb_id() {
		return mb_id;
	}
	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}
	public String getMb_phone() {
		return mb_phone;
	}
	public void setMb_phone(String mb_phone) {
		this.mb_phone = mb_phone;
	}
	
}
