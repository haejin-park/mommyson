package com.sd.mommyson.manager.dto;

import java.sql.Date;

public class TaxAdjustDTO {

	private int code;
	private Date payDate;
	private String msType;
	private String msPrice;
	private String ceoName;
	private String storeName;
	private String storeNo;
	private String email;
	
	public TaxAdjustDTO() {}

	public TaxAdjustDTO(int code, Date payDate, String msType, String msPrice, String ceoName, String storeName,
			String storeNo, String email) {
		super();
		this.code = code;
		this.payDate = payDate;
		this.msType = msType;
		this.msPrice = msPrice;
		this.ceoName = ceoName;
		this.storeName = storeName;
		this.storeNo = storeNo;
		this.email = email;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public Date getPayDate() {
		return payDate;
	}

	public void setPayDate(Date payDate) {
		this.payDate = payDate;
	}

	public String getMsType() {
		return msType;
	}

	public void setMsType(String msType) {
		this.msType = msType;
	}

	public String getMsPrice() {
		return msPrice;
	}

	public void setMsPrice(String msPrice) {
		this.msPrice = msPrice;
	}

	public String getCeoName() {
		return ceoName;
	}

	public void setCeoName(String ceoName) {
		this.ceoName = ceoName;
	}

	public String getStoreName() {
		return storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}

	public String getStoreNo() {
		return storeNo;
	}

	public void setStoreNo(String storeNo) {
		this.storeNo = storeNo;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "TaxAdjustDTO [code=" + code + ", payDate=" + payDate + ", msType=" + msType + ", msPrice=" + msPrice
				+ ", ceoName=" + ceoName + ", storeName=" + storeName + ", storeNo=" + storeNo + ", email=" + email
				+ "]";
	}

	
}
