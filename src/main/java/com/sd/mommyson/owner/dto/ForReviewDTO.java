package com.sd.mommyson.owner.dto;


import java.util.List;

import com.sd.mommyson.member.dto.MemberDTO;
import com.sd.mommyson.user.dto.ReviewDTO;

 // storeName 하나 당 리뷰 리스트 여러개
public class ForReviewDTO {
	
	private String storeName;
	private List<ReviewDTO> reviewDTO;

	public ForReviewDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ForReviewDTO(String storeName, List<ReviewDTO> reviewDTO) {
		super();
		this.storeName = storeName;
		this.reviewDTO = reviewDTO;
	}

	public String getStoreName() {
		return storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}

	public List<ReviewDTO> getReviewDTO() {
		return reviewDTO;
	}

	public void setReviewDTO(List<ReviewDTO> reviewDTO) {
		this.reviewDTO = reviewDTO;
	}

	@Override
	public String toString() {
		return "ForReviewDTO [storeName=" + storeName + ", reviewDTO=" + reviewDTO + "]";
	}



	
}
