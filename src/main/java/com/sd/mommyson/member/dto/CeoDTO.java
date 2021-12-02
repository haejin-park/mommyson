package com.sd.mommyson.member.dto;

import java.sql.Date;

public class CeoDTO {

	private int no;
	private String name;
	private int memCode;
	private String account;
	private java.sql.Date startDate;
	
	public CeoDTO() {}

	public CeoDTO(int no, String name, int memCode, String account, Date startDate) {
		super();
		this.no = no;
		this.name = name;
		this.memCode = memCode;
		this.account = account;
		this.startDate = startDate;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getMemCode() {
		return memCode;
	}

	public void setMemCode(int memCode) {
		this.memCode = memCode;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public java.sql.Date getStartDate() {
		return startDate;
	}

	public void setStartDate(java.sql.Date startDate) {
		this.startDate = startDate;
	}

	@Override
	public String toString() {
		return "CeoDTO [no=" + no + ", name=" + name + ", memCode=" + memCode + ", account=" + account + ", startDate="
				+ startDate + "]";
	}
}
