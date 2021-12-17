package com.sd.mommyson.owner.dao;

import java.util.List;
import java.util.Map;

import com.sd.mommyson.manager.common.Pagination;
import com.sd.mommyson.member.dto.CeoDTO;
import com.sd.mommyson.member.dto.MemberDTO;
import com.sd.mommyson.owner.dto.CouponDTO;
import com.sd.mommyson.owner.dto.DCProduct;
import com.sd.mommyson.owner.dto.MembershipDTO;
import com.sd.mommyson.owner.dto.ProductDTO;
import com.sd.mommyson.owner.dto.TagDTO;
import com.sd.mommyson.user.dto.OrderDTO;
import com.sd.mommyson.user.dto.ReviewDTO;

public interface OwnerDAO {

	public CeoDTO selectOwner(MemberDTO member);

	public List<CouponDTO> selectCoupon(Pagination pagination);

	public List<ReviewDTO> selectReview(Pagination pagination);
	
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

	public int deleteReview(List<Integer> deleteReviewList);

	public int deleteCoupon(List<Integer> deleteCouponList);

	public int modifyStatus(ProductDTO product);

	public int removeProduct(List<Integer> deleteCode);

	public int selectTotalDC(Map<String, Object> searchMap);

	public List<ProductDTO> selectDC(Map<String, Object> searchMap);

	public int selectTotalModal(Map<String, Object> searchMap);

	public List<ProductDTO> selectProdouct(int memCode);

	public List<OrderDTO> selectOrderList(Pagination pagination);

	public List<OrderDTO> selectOrderList2(String storeName);

	public int selectOrderListTotalCount(String storeName);

	public int selectCouponListTotalCount(int memCode);

	public List<CouponDTO> selectCoupon(MemberDTO member);

	public int selectReviewListTotalCount(String storeName);
	
	public int registDc(List<DCProduct> maps);

	public int modifyOwnerStatus(Map<String, Object> map);

	public MembershipDTO selectMembership(int msCode);

	public int modifyProduct(DCProduct dc);

	public int removeDc(List<Integer> codeList);

	public int modifyDc(List<Integer> codeList);

	public ProductDTO selectPd(int sdCode);

	public List<Integer> seletTagList(int sdCode);

	public int updateProduct(Map<String, Object> productInfo);

	public int insertTag(Map<String, Integer> map);

	public int removeTag(int sdCode);

}
