package com.sd.mommyson.usermypage.dto;

import java.sql.Date;

public class CouponHistoryDTO {

	private int cpNum;
	private int cpCode;
	private int memCode;
	private String useStatus;
	private java.sql.Date giveDate;
	private CouponDTO couponInfo;
	public CouponHistoryDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CouponHistoryDTO(int cpNum, int cpCode, int memCode, String useStatus, Date giveDate, CouponDTO couponInfo) {
		super();
		this.cpNum = cpNum;
		this.cpCode = cpCode;
		this.memCode = memCode;
		this.useStatus = useStatus;
		this.giveDate = giveDate;
		this.couponInfo = couponInfo;
	}
	public int getCpNum() {
		return cpNum;
	}
	public void setCpNum(int cpNum) {
		this.cpNum = cpNum;
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
	public java.sql.Date getGiveDate() {
		return giveDate;
	}
	public void setGiveDate(java.sql.Date giveDate) {
		this.giveDate = giveDate;
	}
	public CouponDTO getCouponInfo() {
		return couponInfo;
	}
	public void setCouponInfo(CouponDTO couponInfo) {
		this.couponInfo = couponInfo;
	}
	@Override
	public String toString() {
		return "CouponHistoryDTO [cpNum=" + cpNum + ", cpCode=" + cpCode + ", memCode=" + memCode + ", useStatus="
				+ useStatus + ", giveDate=" + giveDate + ", couponInfo=" + couponInfo + "]";
	}

	
	

}
