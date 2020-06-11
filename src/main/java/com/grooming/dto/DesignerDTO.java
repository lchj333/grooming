package com.grooming.dto;
//디자이너
public class DesignerDTO {
	//매개변수
	private int de_licencenum;
	private String mb_id;
	private String de_licence;
	private String de_approval;
	private int de_point;
	private String de_insta;
	
	//생성자
	public DesignerDTO() {}
	public DesignerDTO(int de_licencenum, String mb_id, String de_licence, String de_approval, int de_point, String de_insta) {
		super();
		this.de_licencenum = de_licencenum;
		this.mb_id = mb_id;
		this.de_licence = de_licence;
		this.de_approval = de_approval;
		this.de_point = de_point;
		this.de_insta = de_insta;
	}
	//ㄱㅌㅅㅌ
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
	public String getDe_licence() {
		return de_licence;
	}
	public void setDe_licence(String de_licence) {
		this.de_licence = de_licence;
	}
	public String getDe_approval() {
		return de_approval;
	}
	public void setDe_approval(String de_approval) {
		this.de_approval = de_approval;
	}
	public int getDe_point() {
		return de_point;
	}
	public void setDe_point(int de_point) {
		this.de_point = de_point;
	}
	public String getDe_insta() {
		return de_insta;
	}
	public void setDe_insta(String de_insta) {
		this.de_insta = de_insta;
	}
	
	
}
