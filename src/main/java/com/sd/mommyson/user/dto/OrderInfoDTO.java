package com.sd.mommyson.user.dto;

public class OrderInfoDTO {
	
	private int proNo;
	private int amount;
	private int orderCode;
	private int sdCode;
	
	public OrderInfoDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public OrderInfoDTO(int sdCode, int amount, int orderCode, int proNo) {
		super();
		this.sdCode = sdCode;
		this.amount = amount;
		this.orderCode = orderCode;
		this.proNo = proNo;
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
	public int getProNo() {
		return proNo;
	}
	public void setProNo(int proNo) {
		this.proNo = proNo;
	}
	
	@Override
	public String toString() {
		return "OrderInfoDTO [sdCode=" + sdCode + ", amount=" + amount + ", orderCode=" + orderCode + ", proNo=" + proNo
				+ "]";
	}
	
	

}
