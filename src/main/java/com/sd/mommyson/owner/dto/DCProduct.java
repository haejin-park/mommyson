package com.sd.mommyson.owner.dto;

import java.sql.Date;

public class DCProduct {

	private int dcCode;
	private int discountRate;
	private Date insertDate;
	private int sdCode;
	private String sdName;
	private int price; 
	
	public DCProduct() {}

	public DCProduct(int dcCode, int discountRate, Date insertDate, int sdCode, String sdName, int price) {
		super();
		this.dcCode = dcCode;
		this.discountRate = discountRate;
		this.insertDate = insertDate;
		this.sdCode = sdCode;
		this.sdName = sdName;
		this.price = price;
	}

	public int getDcCode() {
		return dcCode;
	}

	public void setDcCode(int dcCode) {
		this.dcCode = dcCode;
	}

	public int getDiscountRate() {
		return discountRate;
	}

	public void setDiscountRate(int discountRate) {
		this.discountRate = discountRate;
	}

	public Date getInsertDate() {
		return insertDate;
	}

	public void setInsertDate(Date insertDate) {
		this.insertDate = insertDate;
	}

	public int getSdCode() {
		return sdCode;
	}

	public void setSdCode(int sdCode) {
		this.sdCode = sdCode;
	}

	public String getSdName() {
		return sdName;
	}

	public void setSdName(String sdName) {
		this.sdName = sdName;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "DCProduct [dcCode=" + dcCode + ", discountRate=" + discountRate + ", insertDate=" + insertDate
				+ ", sdCode=" + sdCode + ", sdName=" + sdName + ", price=" + price + "]";
	}
}
