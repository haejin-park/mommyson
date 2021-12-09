package com.sd.mommyson.user.dto;

import java.sql.Date;

public class ReportDTO {

	private int rvCode;
	private int repTypeCode;
	private int repNo;
	private Date repDate;
	private char status;
	
	public ReportDTO() {
		// TODO Auto-generated constructor stub
	}

	public ReportDTO(int rvCode, int repTypeCode, int repNo, Date repDate, char status) {
		super();
		this.rvCode = rvCode;
		this.repTypeCode = repTypeCode;
		this.repNo = repNo;
		this.repDate = repDate;
		this.status = status;
	}

	public int getRvCode() {
		return rvCode;
	}

	public void setRvCode(int rvCode) {
		this.rvCode = rvCode;
	}

	public int getRepTypeCode() {
		return repTypeCode;
	}

	public void setRepTypeCode(int repTypeCode) {
		this.repTypeCode = repTypeCode;
	}

	public int getRepNo() {
		return repNo;
	}

	public void setRepNo(int repNo) {
		this.repNo = repNo;
	}

	public Date getRepDate() {
		return repDate;
	}

	public void setRepDate(Date repDate) {
		this.repDate = repDate;
	}

	public char getStatus() {
		return status;
	}

	public void setStatus(char status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "ReportDTO [rvCode=" + rvCode + ", repTypeCode=" + repTypeCode + ", repNo=" + repNo + ", repDate="
				+ repDate + ", status=" + status + "]";
	}
	
}
