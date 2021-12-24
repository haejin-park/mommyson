package com.sd.mommyson.owner.dto;

import java.sql.Date;

public class CouponDTO {
	
	private int cpCode;
	private int cpNum;
	private String cpName;
	private Date startDate;
	private int disWon;
	private Date endDate;
	private int dCcon;
	private int storeCode;
	
	public CouponDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CouponDTO(int cpCode, int cpNum, String cpName, Date startDate, int disWon, Date endDate, int dCcon,
			int storeCode) {
		super();
		this.cpCode = cpCode;
		this.cpNum = cpNum;
		this.cpName = cpName;
		this.startDate = startDate;
		this.disWon = disWon;
		this.endDate = endDate;
		this.dCcon = dCcon;
		this.storeCode = storeCode;
	}

	public int getCpCode() {
		return cpCode;
	}

	public void setCpCode(int cpCode) {
		this.cpCode = cpCode;
	}

	public int getCpNum() {
		return cpNum;
	}

	public void setCpNum(int cpNum) {
		this.cpNum = cpNum;
	}

	public String getCpName() {
		return cpName;
	}

	public void setCpName(String cpName) {
		this.cpName = cpName;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public int getDisWon() {
		return disWon;
	}

	public void setDisWon(int disWon) {
		this.disWon = disWon;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public int getdCcon() {
		return dCcon;
	}

	public void setdCcon(int dCcon) {
		this.dCcon = dCcon;
	}

	public int getStoreCode() {
		return storeCode;
	}

	public void setStoreCode(int storeCode) {
		this.storeCode = storeCode;
	}

	@Override
	public String toString() {
		return "CouponDTO [cpCode=" + cpCode + ", cpNum=" + cpNum + ", cpName=" + cpName + ", startDate=" + startDate
				+ ", disWon=" + disWon + ", endDate=" + endDate + ", dCcon=" + dCcon + ", storeCode=" + storeCode + "]";
	}

	
	
}
