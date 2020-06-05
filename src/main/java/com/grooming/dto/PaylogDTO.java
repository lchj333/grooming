package com.grooming.dto;

import java.util.Date;

public class PaylogDTO {
	
	//매개변수
	private int de_licencenum;
	private int pay_money;
	
	//생성자
	public PaylogDTO() {}
	public PaylogDTO(int de_licencenum, int pay_money) {
		super();
		this.de_licencenum = de_licencenum;
		this.pay_money = pay_money;
	}
	
	//ㄱㅌㅅㅌㅋㅋㅋㅋㅋ
	public int getDe_licencenum() {
		return de_licencenum;
	}
	public void setDe_licencenum(int de_licencenum) {
		this.de_licencenum = de_licencenum;
	}
	
	public int getPay_money() {
		return pay_money;
	}
	public void setPay_money(int pay_money) {
		this.pay_money = pay_money;
	}
	
	
	
	
	

}
