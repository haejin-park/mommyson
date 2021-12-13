package com.sd.mommyson.user.dto;

import java.util.List;

<<<<<<< HEAD
import com.sd.mommyson.member.dto.MemberDTO;

=======
>>>>>>> 0654fd0e3b493d135f664e4fa2db95d1752178b1
public class ReviewDTO {

	private int memCode;
	private int orderCode;
	private String img;
	private String content;
	private int grade;
	private int rvCode;
	private String memId;
<<<<<<< HEAD
	private OrderDTO orderDTO;
	private MemberDTO memberDTO;
	private List<ReportDTO> report;
=======
	private String isDeleted;
	private List<String> orderList;
>>>>>>> 0654fd0e3b493d135f664e4fa2db95d1752178b1
	
	public ReviewDTO() {
		// TODO Auto-generated constructor stub
	}

	public ReviewDTO(int memCode, int orderCode, String img, String content, int grade, int rvCode, String memId,
<<<<<<< HEAD
			OrderDTO orderDTO, MemberDTO memberDTO, List<ReportDTO> report) {
=======
			String isDeleted, List<String> orderList) {
>>>>>>> 0654fd0e3b493d135f664e4fa2db95d1752178b1
		super();
		this.memCode = memCode;
		this.orderCode = orderCode;
		this.img = img;
		this.content = content;
		this.grade = grade;
		this.rvCode = rvCode;
		this.memId = memId;
<<<<<<< HEAD
		this.orderDTO = orderDTO;
		this.memberDTO = memberDTO;
		this.report = report;
=======
		this.isDeleted = isDeleted;
		this.orderList = orderList;
>>>>>>> 0654fd0e3b493d135f664e4fa2db95d1752178b1
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

<<<<<<< HEAD
	public OrderDTO getOrderDTO() {
		return orderDTO;
	}

	public void setOrderDTO(OrderDTO orderDTO) {
		this.orderDTO = orderDTO;
	}

	public MemberDTO getMemberDTO() {
		return memberDTO;
	}

	public void setMemberDTO(MemberDTO memberDTO) {
		this.memberDTO = memberDTO;
	}

	public List<ReportDTO> getReport() {
		return report;
	}

	public void setReport(List<ReportDTO> report) {
		this.report = report;
=======
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
>>>>>>> 0654fd0e3b493d135f664e4fa2db95d1752178b1
	}

	@Override
	public String toString() {
		return "ReviewDTO [memCode=" + memCode + ", orderCode=" + orderCode + ", img=" + img + ", content=" + content
<<<<<<< HEAD
				+ ", grade=" + grade + ", rvCode=" + rvCode + ", memId=" + memId + ", orderDTO=" + orderDTO
				+ ", memberDTO=" + memberDTO + ", report=" + report + "]";
	}


=======
				+ ", grade=" + grade + ", rvCode=" + rvCode + ", memId=" + memId + ", isDeleted=" + isDeleted
				+ ", orderList=" + orderList + "]";
	}

	
	
>>>>>>> 0654fd0e3b493d135f664e4fa2db95d1752178b1
}