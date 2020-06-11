package com.grooming.dto;

import java.util.Date;

public class PaylogDTO {
	
	//매개변수
	private int de_licencenum;
	private Date pay_date;
	private int pay_money;
	
	//생성자
	public PaylogDTO() {}
	
	public PaylogDTO(int de_licencenum, Date pay_date, int pay_money) {
		super();
		this.de_licencenum = de_licencenum;
		this.pay_date = pay_date;
		this.pay_money = pay_money;
	}



	public int getDe_licencenum() {
		return de_licencenum;
	}

	public void setDe_licencenum(int de_licencenum) {
		this.de_licencenum = de_licencenum;
	}

	public Date getPay_date() {
		return pay_date;
	}

	public void setPay_date(Date pay_date) {
		this.pay_date = pay_date;
	}

	public int getPay_money() {
		return pay_money;
	}

	public void setPay_money(int pay_money) {
		this.pay_money = pay_money;
	}


	
	
	
	
	
	

}
