package com.sd.mommyson.owner.service;

import java.util.List;

import com.sd.mommyson.member.dto.MemberDTO;
import com.sd.mommyson.owner.dto.CouponDTO;
import com.sd.mommyson.user.dto.ReviewDTO;

public interface OwnerService {

	public MemberDTO selectOwner(MemberDTO member);

	public 	List<CouponDTO> selectCoupon(MemberDTO member);

	public CouponDTO insertCoupon(CouponDTO coupon);

	public List<ReviewDTO> selectReview(ReviewDTO review);

	
}
