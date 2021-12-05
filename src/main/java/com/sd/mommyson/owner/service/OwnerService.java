package com.sd.mommyson.owner.service;

import java.util.List;
import java.util.Map;

import com.sd.mommyson.member.dto.MemberDTO;
import com.sd.mommyson.member.dto.StoreDTO;
import com.sd.mommyson.owner.dto.CouponDTO;
import com.sd.mommyson.user.dto.ReviewDTO;

public interface OwnerService {

	public MemberDTO selectOwner(MemberDTO member);

	public 	List<CouponDTO> selectCoupon(MemberDTO member);

	public CouponDTO insertCoupon(CouponDTO coupon);

	public List<ReviewDTO> selectReview(ReviewDTO review);

	
	public int modifyInfo(Map<String, String> modifyInfo);

	public int modifyCeo(Map<String, String> modifyInfo);

	public int modifyStore(Map<String, String> modifyInfo);
}
