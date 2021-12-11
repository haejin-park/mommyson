package com.sd.mommyson.member.dto;

import java.util.List;

import com.sd.mommyson.user.dto.ReviewDTO;

public class UserDTO {

	private String memCode;
	private String name;
	private int repCount;
	private List<ReviewDTO> review;
	
	public UserDTO() {}

	public UserDTO(String memCode, String name, int repCount, List<ReviewDTO> review) {
		super();
		this.memCode = memCode;
		this.name = name;
		this.repCount = repCount;
		this.review = review;
	}

	public String getMemCode() {
		return memCode;
	}

	public void setMemCode(String memCode) {
		this.memCode = memCode;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getRepCount() {
		return repCount;
	}

	public void setRepCount(int repCount) {
		this.repCount = repCount;
	}

	public List<ReviewDTO> getReview() {
		return review;
	}

	public void setReview(List<ReviewDTO> review) {
		this.review = review;
	}

	@Override
	public String toString() {
		return "UserDTO [memCode=" + memCode + ", name=" + name + ", repCount=" + repCount + ", review=" + review + "]";
	}

}
