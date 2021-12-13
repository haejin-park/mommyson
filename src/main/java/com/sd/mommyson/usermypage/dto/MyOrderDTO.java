package com.sd.mommyson.usermypage.dto;

import java.sql.Date;
import java.util.List;
//나의 주문리스트
public class MyOrderDTO {
	
	private int memCode;//MEM_CODE	NUMBER 회원코드
	private int totalPrice;//TOTAL_PRICE	NUMBER 구매금액
	private int orderCode;//ORDER_CODE	NUMBER 주문코드
	private String orderType;//ORDER_TYPE	VARCHAR2(10 BYTE) 주문유형
	private Date takeTime;//TAKE_TIME	TIMESTAMP(6) 수령시간
	private String address;//ADDRESS	VARCHAR2(180 BYTE) 배송지
	private String phone;//PHONE	VARCHAR2(20 BYTE) 연락처
	private String storeName;//STORE_NAME	VARCHAR2(30 BYTE) 주문가게
	private int code;//CODE	NUMBER 상태코드
	private Date orderCancleTime;//ORDER_CANCLE_TIME	DATE 주문 취소시간
	private Date orderCompleteTime;//ORDER_COMPLETE_TIME	DATE 주문 완료시간
	private Date orderAcceptTime;//ORDER_ACCEPT_TIME	DATE 주문 접수 시간
	private Date orderRequestTime;//ORDER_RUQEUST_TIME	DATE 주문 요청 시간
	private List<OrderInfoDTO> orderInfo;
	
	public MyOrderDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MyOrderDTO(int memCode, int totalPrice, int orderCode, String orderType, Date takeTime, String address,
			String phone, String storeName, int code, Date orderCancleTime, Date orderCompleteTime,
			Date orderAcceptTime, Date orderRequestTime, List<OrderInfoDTO> orderInfo) {
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
		this.orderCancleTime = orderCancleTime;
		this.orderCompleteTime = orderCompleteTime;
		this.orderAcceptTime = orderAcceptTime;
		this.orderRequestTime = orderRequestTime;
		this.orderInfo = orderInfo;
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
	public Date getOrderCancleTime() {
		return orderCancleTime;
	}
	public void setOrderCancleTime(Date orderCancleTime) {
		this.orderCancleTime = orderCancleTime;
	}
	public Date getOrderCompleteTime() {
		return orderCompleteTime;
	}
	public void setOrderCompleteTime(Date orderCompleteTime) {
		this.orderCompleteTime = orderCompleteTime;
	}
	public Date getOrderAcceptTime() {
		return orderAcceptTime;
	}
	public void setOrderAcceptTime(Date orderAcceptTime) {
		this.orderAcceptTime = orderAcceptTime;
	}
	public Date getOrderRequestTime() {
		return orderRequestTime;
	}
	public void setOrderRequestTime(Date orderRequestTime) {
		this.orderRequestTime = orderRequestTime;
	}
	public List<OrderInfoDTO> getOrderInfo() {
		return orderInfo;
	}
	public void setOrderInfo(List<OrderInfoDTO> orderInfo) {
		this.orderInfo = orderInfo;
	}
	@Override
	public String toString() {
		return "MyOrderDTO [memCode=" + memCode + ", totalPrice=" + totalPrice + ", orderCode=" + orderCode
				+ ", orderType=" + orderType + ", takeTime=" + takeTime + ", address=" + address + ", phone=" + phone
				+ ", storeName=" + storeName + ", code=" + code + ", orderCancleTime=" + orderCancleTime
				+ ", orderCompleteTime=" + orderCompleteTime + ", orderAcceptTime=" + orderAcceptTime
				+ ", orderRequestTime=" + orderRequestTime + ", orderInfo=" + orderInfo + "]";
	}
	
}
