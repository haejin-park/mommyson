package com.sd.mommyson.owner.dao;

import java.util.List;
import java.util.Map;

import com.sd.mommyson.member.dto.CeoDTO;
import com.sd.mommyson.member.dto.MemberDTO;
import com.sd.mommyson.owner.dto.CouponDTO;
import com.sd.mommyson.owner.dto.ForReviewDTO;
import com.sd.mommyson.owner.dto.ProductDTO;
import com.sd.mommyson.owner.dto.TagDTO;
import com.sd.mommyson.user.dto.ReviewDTO;

public interface OwnerDAO {

	public CeoDTO selectOwner(MemberDTO member);

	public List<CouponDTO> selectCoupon(MemberDTO member);

	public List<ForReviewDTO> selectReview(String storeName);
	
	public int modifyInfo(Map<String, Object> modifyInfo);

	public int modifyCeo(Map<String, Object> modifyInfo);

	public int registCoupon(CouponDTO coupon);

	public int registCouponStore(int memCode);

	public int modifyStore(Map<String, Object> modifyInfo);

	public int modifyPwd(MemberDTO member);

	public List<TagDTO> selectTag();

	public int registProduct(Map<String, Object> productInfo);

	public List<ProductDTO> selectProduct(Map<String, Object> searchMap);

	public int selectTotalCount(Map<String, Object> searchMap);

<<<<<<< HEAD
	public int deleteReview(List<Integer> deleteReviewList);

	public int deleteCoupon(List<Integer> deleteCouponList);
=======
	public int modifyStatus(ProductDTO product);

	public int removeProduct(List<Integer> deleteCode);

	public int selectTotalDC(Map<String, Object> searchMap);

	public List<ProductDTO> selectDC(Map<String, Object> searchMap);
>>>>>>> 9b6cf8336b98b27801778f2024ea092d1e16525d
	
}
