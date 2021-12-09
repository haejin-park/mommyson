package com.sd.mommyson.owner.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sd.mommyson.manager.common.Pagination;
import com.sd.mommyson.member.dao.MemberDAO;
import com.sd.mommyson.member.dto.MemberDTO;
import com.sd.mommyson.owner.dao.OwnerDAO;
import com.sd.mommyson.owner.dto.CouponDTO;
import com.sd.mommyson.owner.dto.ProductDTO;
import com.sd.mommyson.owner.dto.TagDTO;
import com.sd.mommyson.user.dto.ReviewDTO;

@Service
public class OwnerServiceImpl implements OwnerService{

	private OwnerDAO ownerDAO;
	private MemberDAO memberDAO;
	
	@Autowired
	public OwnerServiceImpl(MemberDAO memberDAO,OwnerDAO ownerDAO) {
		this.memberDAO = memberDAO;
		this.ownerDAO = ownerDAO;
	}

	@Override
	public MemberDTO selectOwner(MemberDTO member) {

		
		return memberDAO.selectOwner(member);
	}

	@Override
	public List<CouponDTO> selectCoupon(MemberDTO member) {
		
		return ownerDAO.selectCoupon(member);
	}


	@Override
	public List<ReviewDTO> selectReview(ReviewDTO review) {
		
		return ownerDAO.selectReview(review);
	}

	@Override
	public int modifyInfo(Map<String, Object> modifyInfo) {

		System.out.println(modifyInfo);
		
		int result = ownerDAO.modifyInfo(modifyInfo);
		
		return result;
	}

	@Override
	public int modifyCeo(Map<String, Object> modifyInfo) {
		
		int result = ownerDAO.modifyCeo(modifyInfo);
		
		return result;
	}

	@Override
	public int modifyStore(Map<String, Object> modifyInfo) {

		int result = ownerDAO.modifyStore(modifyInfo);
		
		return result;
	}

	@Override
	public int registCoupon(CouponDTO coupon) {
		
		int result = ownerDAO.registCoupon(coupon);
		
		return result;
	
	}
	@Override
	public int modifyPwd(MemberDTO member) {
		
		int result = ownerDAO.modifyPwd(member);
		
		return result;
	}

	@Override
	public int registCouponStore(int memCode) {
		
		int result = ownerDAO.registCouponStore(memCode);
		
		return result;
		
	}
	
	@Override
	public List<TagDTO> selectTag() {

		return ownerDAO.selectTag();
	}

	@Override
	public int registProduct(Map<String, Object> productInfo) {

		int result = ownerDAO.registProduct(productInfo);
		
		return result;
	}

	@Override
	public List<ProductDTO> selectProduct(Map<String, Object> searchMap) {
		
		return ownerDAO.selectProduct(searchMap);
	}

	@Override
	public int selectTotalCount(Map<String, Object> searchMap) {

		int result = ownerDAO.selectTotalCount(searchMap);
			
		return result;
	}

	@Override
	public int modifyStatus(ProductDTO product) {

		int result = ownerDAO.modifyStatus(product);
		
		return result;
	}

	@Override
	public int removeProduct(List<Integer> deleteCode) {

		int result = ownerDAO.removeProduct(deleteCode);
		
		return result;
	}

	@Override
	public int selectTotalDC(Map<String, Object>  searchMap) {
		
		int result = ownerDAO.selectTotalDC(searchMap);
		
		return result;
	}

	@Override
	public List<ProductDTO> selectDC(Map<String, Object> searchMap) {

		List<ProductDTO> result = ownerDAO.selectDC(searchMap);
		
		return result;
	}
	

}
