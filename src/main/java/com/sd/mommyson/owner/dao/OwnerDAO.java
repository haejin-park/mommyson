package com.sd.mommyson.owner.dao;

import java.util.List;

import com.sd.mommyson.member.dto.CeoDTO;
import com.sd.mommyson.member.dto.MemberDTO;
import com.sd.mommyson.owner.dto.CouponDTO;

public interface OwnerDAO {

	public CeoDTO selectOwner(MemberDTO member);

	public List<CouponDTO> selectCoupon(MemberDTO member);
	
}
