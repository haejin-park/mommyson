package com.sd.mommyson.user.dto;

public class AcceptDTO {
	
	private int code;
	private String orderStatus;
	
	public AcceptDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public AcceptDTO(int code, String orderStatus) {
		super();
		this.code = code;
		this.orderStatus = orderStatus;
	}
	
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}
	
	@Override
	public String toString() {
		return "AcceptDTO [code=" + code + ", orderStatus=" + orderStatus + "]";
	}
	
}
