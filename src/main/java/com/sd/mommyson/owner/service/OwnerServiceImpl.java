package com.sd.mommyson.owner.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.sd.mommyson.member.dao.MemberDAO;
import com.sd.mommyson.member.dto.MemberDTO;
import com.sd.mommyson.owner.dao.OwnerDAO;
import com.sd.mommyson.owner.dto.CouponDTO;
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

	
	public int modifyInfo(Map<String, String> modifyInfo) {

		System.out.println(modifyInfo);
		
		int result = ownerDAO.modifyInfo(modifyInfo);
		
		return result;
	}

	@Override
	public int modifyCeo(Map<String, String> modifyInfo) {
		
		int result = ownerDAO.modifyCeo(modifyInfo);
		
		return result;
	}

	@Override
	public int modifyStore(Map<String, String> modifyInfo) {

		int result = ownerDAO.modifyStore(modifyInfo);
		
		return result;
	}

	@Override
	public int registCoupon(CouponDTO coupon) {
		
		int result = ownerDAO.registCoupon(coupon);
		
		return result;
	}

	@Override
	public int registCouponStore(int memCode) {
		
		int result = ownerDAO.registCouponStore(memCode);
		
		return result;
	}
	

}
