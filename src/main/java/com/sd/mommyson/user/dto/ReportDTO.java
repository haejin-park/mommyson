package com.sd.mommyson.user.dto;

import java.sql.Date;

public class ReportDTO {

	private int rvCode;
	private int repTypeCode;
	private int repNo;
	private Date repDate;
	private String status;
	private ReportTypeDTO reportType;
	
	public ReportDTO() {
		// TODO Auto-generated constructor stub
	}

	public ReportDTO(int rvCode, int repTypeCode, int repNo, Date repDate, String status, ReportTypeDTO reportType) {
		super();
		this.rvCode = rvCode;
		this.repTypeCode = repTypeCode;
		this.repNo = repNo;
		this.repDate = repDate;
		this.status = status;
		this.reportType = reportType;
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

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public ReportTypeDTO getReportType() {
		return reportType;
	}

	public void setReportType(ReportTypeDTO reportType) {
		this.reportType = reportType;
	}

	@Override
	public String toString() {
		return "ReportDTO [rvCode=" + rvCode + ", repTypeCode=" + repTypeCode + ", repNo=" + repNo + ", repDate="
				+ repDate + ", status=" + status + ", reportType=" + reportType + "]";
	}

}
