package com.sd.mommyson.owner.dao;

import java.util.List;

import com.sd.mommyson.member.dto.CeoDTO;
import com.sd.mommyson.member.dto.MemberDTO;
import com.sd.mommyson.owner.dto.CouponDTO;
import com.sd.mommyson.user.dto.ReviewDTO;

public interface OwnerDAO {

	public CeoDTO selectOwner(MemberDTO member);

	public List<CouponDTO> selectCoupon(MemberDTO member);

	public CouponDTO insertCoupon(CouponDTO coupon);

	public List<ReviewDTO> selectReview(ReviewDTO review);
	
}
