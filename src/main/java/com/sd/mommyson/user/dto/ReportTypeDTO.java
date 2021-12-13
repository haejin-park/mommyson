package com.sd.mommyson.user.dto;

public class ReportTypeDTO {

	private int repTypeCode;
	private String repType;
	
	public ReportTypeDTO() {
		// TODO Auto-generated constructor stub
	}

	public ReportTypeDTO(int repTypeCode, String repType) {
		super();
		this.repTypeCode = repTypeCode;
		this.repType = repType;
	}

	public int getRepTypeCode() {
		return repTypeCode;
	}

	public void setRepTypeCode(int repTypeCode) {
		this.repTypeCode = repTypeCode;
	}

	public String getRepType() {
		return repType;
	}

	public void setRepType(String repType) {
		this.repType = repType;
	}

	@Override
	public String toString() {
		return "ReportTypeDTO [repTypeCode=" + repTypeCode + ", repType=" + repType + "]";
	}
	
}
