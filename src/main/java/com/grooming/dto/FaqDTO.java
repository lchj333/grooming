package com.grooming.dto;

public class FaqDTO {
	private String f_title;
	private String ad_id;
	private String f_con;
	
	public FaqDTO() {}
	
	public FaqDTO(String f_title, String ad_id, String f_con) {
		super();
		this.f_title = f_title;
		this.ad_id = ad_id;
		this.f_con = f_con;
	}

	public String getF_title() {
		return f_title;
	}

	public void setF_title(String f_title) {
		this.f_title = f_title;
	}

	public String getAd_id() {
		return ad_id;
	}

	public void setAd_id(String ad_id) {
		this.ad_id = ad_id;
	}

	public String getF_con() {
		return f_con;
	}

	public void setF_con(String f_con) {
		this.f_con = f_con;
	}
	
}
