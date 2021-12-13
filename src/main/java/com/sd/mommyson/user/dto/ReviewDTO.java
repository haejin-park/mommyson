package com.sd.mommyson.user.dto;

import java.util.List;

public class ReviewDTO {

	private int memCode;
	private int orderCode;
	private String img;
	private String content;
	private int grade;
	private int rvCode;
	private String memId;
	private String isDeleted;
	private List<String> orderList;
	
	public ReviewDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ReviewDTO(int memCode, int orderCode, String img, String content, int grade, int rvCode, String memId,
			String isDeleted, List<String> orderList) {
		super();
		this.memCode = memCode;
		this.orderCode = orderCode;
		this.img = img;
		this.content = content;
		this.grade = grade;
		this.rvCode = rvCode;
		this.memId = memId;
		this.isDeleted = isDeleted;
		this.orderList = orderList;
	}

	public int getMemCode() {
		return memCode;
	}

	public void setMemCode(int memCode) {
		this.memCode = memCode;
	}

	public int getOrderCode() {
		return orderCode;
	}

	public void setOrderCode(int orderCode) {
		this.orderCode = orderCode;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	public int getRvCode() {
		return rvCode;
	}

	public void setRvCode(int rvCode) {
		this.rvCode = rvCode;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getIsDeleted() {
		return isDeleted;
	}

	public void setIsDeleted(String isDeleted) {
		this.isDeleted = isDeleted;
	}

	public List<String> getOrderList() {
		return orderList;
	}

	public void setOrderList(List<String> orderList) {
		this.orderList = orderList;
	}

	@Override
	public String toString() {
		return "ReviewDTO [memCode=" + memCode + ", orderCode=" + orderCode + ", img=" + img + ", content=" + content
				+ ", grade=" + grade + ", rvCode=" + rvCode + ", memId=" + memId + ", isDeleted=" + isDeleted
				+ ", orderList=" + orderList + "]";
	}

	
	
}