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
	private OrderDTO orderDTO;
	private List<ReportDTO> report;
	
	public ReviewDTO() {
		// TODO Auto-generated constructor stub
	}

	public ReviewDTO(int memCode, int orderCode, String img, String content, int grade, int rvCode, String memId,
			OrderDTO orderDTO, List<ReportDTO> report) {
		super();
		this.memCode = memCode;
		this.orderCode = orderCode;
		this.img = img;
		this.content = content;
		this.grade = grade;
		this.rvCode = rvCode;
		this.memId = memId;
		this.orderDTO = orderDTO;
		this.report = report;
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

	public OrderDTO getOrderDTO() {
		return orderDTO;
	}

	public void setOrderDTO(OrderDTO orderDTO) {
		this.orderDTO = orderDTO;
	}

	public List<ReportDTO> getReport() {
		return report;
	}

	public void setReport(List<ReportDTO> report) {
		this.report = report;
	}

	@Override
	public String toString() {
		return "ReviewDTO [memCode=" + memCode + ", orderCode=" + orderCode + ", img=" + img + ", content=" + content
				+ ", grade=" + grade + ", rvCode=" + rvCode + ", memId=" + memId + ", orderDTO=" + orderDTO
				+ ", report=" + report + "]";
	}

}