package com.sd.mommyson.user.dto;

import java.sql.Date;

public class OrderDTO {

	private int memCode;		// 회원코드
	private int totalPrice;
	private int orderCode;
	private String orderType;
	private Date takeTime;
	private String address;
	private String phone;
	private String storeName;
	private int code;			// 상태코드 (1 : 진행중 2: 처리중 )
	
	public OrderDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public OrderDTO(int memCode, int totalPrice, int orderCode, String orderType, Date takeTime, String address,
			String phone, String storeName, int code) {
		super();
		this.memCode = memCode;
		this.totalPrice = totalPrice;
		this.orderCode = orderCode;
		this.orderType = orderType;
		this.takeTime = takeTime;
		this.address = address;
		this.phone = phone;
		this.storeName = storeName;
		this.code = code;
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
	public int getOrderCode() {
		return orderCode;
	}
	public void setOrderCode(int orderCode) {
		this.orderCode = orderCode;
	}
	public String getOrderType() {
		return orderType;
	}
	public void setOrderType(String orderType) {
		this.orderType = orderType;
	}
	public Date getTakeTime() {
		return takeTime;
	}
	public void setTakeTime(Date takeTime) {
		this.takeTime = takeTime;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getStoreName() {
		return storeName;
	}
	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	
	@Override
	public String toString() {
		return "OrderDTO [memCode=" + memCode + ", totalPrice=" + totalPrice + ", orderCode=" + orderCode
				+ ", orderType=" + orderType + ", takeTime=" + takeTime + ", address=" + address + ", phone=" + phone
				+ ", storeName=" + storeName + ", code=" + code + "]";
	}
	
	
}
