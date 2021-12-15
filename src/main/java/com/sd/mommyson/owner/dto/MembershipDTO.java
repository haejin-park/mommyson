package com.sd.mommyson.owner.dto;

public class MembershipDTO {

	private int msCode;
	private String msType;
	private int msDate;
	private String msPrice;
	
	public MembershipDTO() {}

	public MembershipDTO(int msCode, String msType, int msDate, String msPrice) {
		super();
		this.msCode = msCode;
		this.msType = msType;
		this.msDate = msDate;
		this.msPrice = msPrice;
	}

	public int getMsCode() {
		return msCode;
	}

	public void setMsCode(int msCode) {
		this.msCode = msCode;
	}

	public String getMsType() {
		return msType;
	}

	public void setMsType(String msType) {
		this.msType = msType;
	}

	public int getMsDate() {
		return msDate;
	}

	public void setMsDate(int msDate) {
		this.msDate = msDate;
	}

	public String getMsPrice() {
		return msPrice;
	}

	public void setMsPrice(String msPrice) {
		this.msPrice = msPrice;
	}

	@Override
	public String toString() {
		return "MembershipDTO [msCode=" + msCode + ", msType=" + msType + ", msDate=" + msDate + ", msPrice=" + msPrice
				+ "]";
	}
}
