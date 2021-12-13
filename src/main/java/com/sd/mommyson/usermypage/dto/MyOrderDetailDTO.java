package com.sd.mommyson.usermypage.dto;

public class MyOrderDetailDTO {

	private int sdCode;
	private String sdName;
	private String sdImg;
	private String storeName;
	private String storeImg;
	
	public MyOrderDetailDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MyOrderDetailDTO(int sdCode, String sdName, String sdImg, String storeName, String storeImg) {
		super();
		this.sdCode = sdCode;
		this.sdName = sdName;
		this.sdImg = sdImg;
		this.storeName = storeName;
		this.storeImg = storeImg;
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

	public String getSdImg() {
		return sdImg;
	}

	public void setSdImg(String sdImg) {
		this.sdImg = sdImg;
	}

	public String getStoreName() {
		return storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}

	public String getStoreImg() {
		return storeImg;
	}

	public void setStoreImg(String storeImg) {
		this.storeImg = storeImg;
	}

	@Override
	public String toString() {
		return "MyOrderDetailDTO [sdCode=" + sdCode + ", sdName=" + sdName + ", sdImg=" + sdImg + ", storeName="
				+ storeName + ", storeImg=" + storeImg + "]";
	}
	
	
}
