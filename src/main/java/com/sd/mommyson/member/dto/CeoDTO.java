package com.sd.mommyson.member.dto;

import java.sql.Date;

public class CeoDTO {

	private int memCode;
	private String account;
	private Date startDate;
	private String name;
	private String no;
	private String img;
	private String openingTime;
	private String storeInfo;
	
	public CeoDTO() {}


	public CeoDTO(int memCode, String account, Date startDate, String name, String no, String img, String openingTime,
			String storeInfo) {
		super();
		this.memCode = memCode;
		this.account = account;
		this.startDate = startDate;
		this.name = name;
		this.no = no;
		this.img = img;
		this.openingTime = openingTime;
		this.storeInfo = storeInfo;
	}


	public String getNo() {
		return no;
	}

	public void setNo(String no) {
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
	
	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}
	
	public String getOpeningTime() {
		return openingTime;
	}


	public void setOpeningTime(String openingTime) {
		this.openingTime = openingTime;
	}


	public String getStoreInfo() {
		return storeInfo;
	}


	public void setStoreInfo(String storeInfo) {
		this.storeInfo = storeInfo;
	}

	@Override
	public String toString() {
		return "CeoDTO [memCode=" + memCode + ", account=" + account + ", startDate=" + startDate + ", name=" + name
				+ ", no=" + no + ", img=" + img + ", openingTime=" + openingTime + ", storeInfo=" + storeInfo + "]";
	}
}
