package com.sd.mommyson.usermypage.dto;

import com.sd.mommyson.owner.dto.ProductDTO;

public class OrderInfoDTO {

	private int sdCode; //반찬코드
	private int amount; //수량
	private int orderCode; //주문코드
	private int proNo; //주문상품번호
	private ProductDTO sdInfo;
	
	public OrderInfoDTO() {
		super();
	}

	public OrderInfoDTO(int sdCode, int amount, int orderCode, int proNo, ProductDTO sdInfo) {
		super();
		this.sdCode = sdCode;
		this.amount = amount;
		this.orderCode = orderCode;
		this.proNo = proNo;
		this.sdInfo = sdInfo;
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

	public ProductDTO getSdInfo() {
		return sdInfo;
	}

	public void setSdInfo(ProductDTO sdInfo) {
		this.sdInfo = sdInfo;
	}

	@Override
	public String toString() {
		return "OrderInfoDTO [sdCode=" + sdCode + ", amount=" + amount + ", orderCode=" + orderCode + ", proNo=" + proNo
				+ ", sdInfo=" + sdInfo + "]";
	}
	
	
	
	
}
