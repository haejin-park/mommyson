package com.sd.mommyson.owner.dto;

import java.sql.Date;

public class MembershipAndStoreDTO {

	private int memCode;
	private int msCode;
	private Date startDate;
	private Date endDate;
	
	public MembershipAndStoreDTO() {}

	public MembershipAndStoreDTO(int memCode, int msCode, Date startDate, Date endDate) {
		super();
		this.memCode = memCode;
		this.msCode = msCode;
		this.startDate = startDate;
		this.endDate = endDate;
	}

	public int getMemCode() {
		return memCode;
	}

	public void setMemCode(int memCode) {
		this.memCode = memCode;
	}

	public int getMsCode() {
		return msCode;
	}

	public void setMsCode(int msCode) {
		this.msCode = msCode;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	@Override
	public String toString() {
		return "MembershipAndStoreDTO [memCode=" + memCode + ", msCode=" + msCode + ", startDate=" + startDate
				+ ", endDate=" + endDate + "]";
	}
}
