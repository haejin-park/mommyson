package com.sd.mommyson.owner.dto;


import java.util.List;

import com.sd.mommyson.member.dto.MemberDTO;
import com.sd.mommyson.user.dto.ReviewDTO;

public class ForReviewDTO {
	
	private int memCode;
	private List<ReviewDTO> reviewDTO;

	public ForReviewDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ForReviewDTO(int memCode, List<ReviewDTO> reviewDTO) {
		super();
		this.memCode = memCode;
		this.reviewDTO = reviewDTO;
	}

	public int getMemCode() {
		return memCode;
	}

	public void setMemCode(int memCode) {
		this.memCode = memCode;
	}

	public List<ReviewDTO> getReviewDTO() {
		return reviewDTO;
	}

	public void setReviewDTO(List<ReviewDTO> reviewDTO) {
		this.reviewDTO = reviewDTO;
	}

	@Override
	public String toString() {
		return "ForReviewDTO [memCode=" + memCode + ", reviewDTO=" + reviewDTO + "]";
	}

	
}
