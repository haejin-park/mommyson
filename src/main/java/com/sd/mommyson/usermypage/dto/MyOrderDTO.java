package com.sd.mommyson.usermypage.dto;

import java.sql.Date;

public class MyOrderDTO {

	private int sdCode; //반찬코드	
	private int amount; //수량
	private int orderCode; // ORDER_CODE 주문코드	
	private java.sql.Date orderCompleteTime;// ORDER_COMPLETE_TIME	주문완료시간
	private java.sql.Date orderAcceptTime; //ORDER_ACCEPT_TIME	주문접수시간
	private java.sql.Date orderRequestTime; //ORDER_RUQEUST_TIME	주문신청시간
	private String sdName; //SD_NAME 반찬명
	private String sdImg; //SD_IMG 반찬사진
	private int ownerCode; //MEM_CODE 사업자코드
	
	private int memCode; //MEM_CODE	회원코드
	private int totalPrice; //TOTAL_PRICE 구매금액
	private String storeName; //STORE_NAME 상호명
	private String storeImg; //STORE_IMG 상호이미지
	public MyOrderDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MyOrderDTO(int sdCode, int amount, int orderCode, Date orderCompleteTime, Date orderAcceptTime,
			Date orderRequestTime, String sdName, String sdImg, int ownerCode, int memCode, int totalPrice,
			String storeName, String storeImg) {
		super();
		this.sdCode = sdCode;
		this.amount = amount;
		this.orderCode = orderCode;
		this.orderCompleteTime = orderCompleteTime;
		this.orderAcceptTime = orderAcceptTime;
		this.orderRequestTime = orderRequestTime;
		this.sdName = sdName;
		this.sdImg = sdImg;
		this.ownerCode = ownerCode;
		this.memCode = memCode;
		this.totalPrice = totalPrice;
		this.storeName = storeName;
		this.storeImg = storeImg;
	}
	public int getSdCode() {
		return sdCode;
	}
	public void setSdCode(int sdCode) {
		this.sdCode = sdCode;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getOrderCode() {
		return orderCode;
	}
	public void setOrderCode(int orderCode) {
		this.orderCode = orderCode;
	}
	public java.sql.Date getOrderCompleteTime() {
		return orderCompleteTime;
	}
	public void setOrderCompleteTime(java.sql.Date orderCompleteTime) {
		this.orderCompleteTime = orderCompleteTime;
	}
	public java.sql.Date getOrderAcceptTime() {
		return orderAcceptTime;
	}
	public void setOrderAcceptTime(java.sql.Date orderAcceptTime) {
		this.orderAcceptTime = orderAcceptTime;
	}
	public java.sql.Date getOrderRequestTime() {
		return orderRequestTime;
	}
	public void setOrderRequestTime(java.sql.Date orderRequestTime) {
		this.orderRequestTime = orderRequestTime;
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
	public int getOwnerCode() {
		return ownerCode;
	}
	public void setOwnerCode(int ownerCode) {
		this.ownerCode = ownerCode;
	}
	public int getMemCode() {
		return memCode;
	}
	public void setMemCode(int memCode) {
		this.memCode = memCode;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
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
		return "MyOrderDTO [sdCode=" + sdCode + ", amount=" + amount + ", orderCode=" + orderCode
				+ ", orderCompleteTime=" + orderCompleteTime + ", orderAcceptTime=" + orderAcceptTime
				+ ", orderRequestTime=" + orderRequestTime + ", sdName=" + sdName + ", sdImg=" + sdImg + ", ownerCode="
				+ ownerCode + ", memCode=" + memCode + ", totalPrice=" + totalPrice + ", storeName=" + storeName
				+ ", storeImg=" + storeImg + "]";
	}
	
	

}
