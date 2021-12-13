package com.sd.mommyson.usermypage.dto;

public class CouponHistoryDTO {

	private int cpCode;
	private int memCode;
	private String useStatus;
	public CouponHistoryDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CouponHistoryDTO(int cpCode, int memCode, String useStatus) {
		super();
		this.cpCode = cpCode;
		this.memCode = memCode;
		this.useStatus = useStatus;
	}
	public int getCpCode() {
		return cpCode;
	}
	public void setCpCode(int cpCode) {
		this.cpCode = cpCode;
	}
	public int getMemCode() {
		return memCode;
	}
	public void setMemCode(int memCode) {
		this.memCode = memCode;
	}
	public String getUseStatus() {
		return useStatus;
	}
	public void setUseStatus(String useStatus) {
		this.useStatus = useStatus;
	}
	@Override
	public String toString() {
		return "CouponHistoryDTO [cpCode=" + cpCode + ", memCode=" + memCode + ", useStatus=" + useStatus + "]";
	}
	
	

}
