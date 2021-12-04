package com.sd.mommyson.owner.dao;

import java.util.List;
import java.util.Map;

import com.sd.mommyson.member.dto.CeoDTO;
import com.sd.mommyson.member.dto.MemberDTO;
import com.sd.mommyson.member.dto.StoreDTO;
import com.sd.mommyson.owner.dto.CouponDTO;

public interface OwnerDAO {

	public CeoDTO selectOwner(MemberDTO member);

	public List<CouponDTO> selectCoupon(MemberDTO member);

	public int modifyInfo(Map<String, String> modifyInfo);

	public int modifyCeo(Map<String, String> modifyInfo);

	public int modifyStore(Map<String, String> modifyInfo);
	
}
