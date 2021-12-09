package com.sd.mommyson.owner.service;

import java.util.List;
import java.util.Map;

import com.sd.mommyson.member.dto.MemberDTO;
import com.sd.mommyson.owner.dto.CouponDTO;
import com.sd.mommyson.owner.dto.ProductDTO;
import com.sd.mommyson.owner.dto.TagDTO;
import com.sd.mommyson.user.dto.ReviewDTO;

public interface OwnerService {

	public MemberDTO selectOwner(MemberDTO member);

	public 	List<CouponDTO> selectCoupon(MemberDTO member);

	public List<ReviewDTO> selectReview(String storeName);
	
	public int modifyInfo(Map<String, Object> modifyInfo);

	public int modifyCeo(Map<String, Object> modifyInfo);

	public int registCoupon(CouponDTO coupon);

	public int registCouponStore(int memCode);
	
	public int modifyStore(Map<String, Object> modifyInfo);

	public int modifyPwd(MemberDTO member);

	public List<TagDTO> selectTag();

	public int registProduct(Map<String, Object> productInfo);

//	public List<ProductDTO> selectProduct(int memCode);

	public List<ProductDTO> selectProduct(Map<String, Object> searchMap);

	public int selectTotalCount(Map<String, Object> searchMap);

	public int deleteReview(List<Integer> deleteReviewList);

	public int deleteCoupon(List<Integer> deleteCouponList);
}
