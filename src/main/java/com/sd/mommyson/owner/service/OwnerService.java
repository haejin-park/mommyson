package com.sd.mommyson.owner.service;

import java.util.List;
import java.util.Map;

import com.sd.mommyson.member.dto.CeoDTO;
import com.sd.mommyson.member.dto.MemberDTO;
import com.sd.mommyson.member.dto.StoreDTO;
import com.sd.mommyson.owner.dto.CouponDTO;
import com.sd.mommyson.owner.dto.TagDTO;

public interface OwnerService {

	public MemberDTO selectOwner(MemberDTO member);

	public 	List<CouponDTO> selectCoupon(MemberDTO member);

	public int modifyInfo(Map<String, Object> modifyInfo);

	public int modifyCeo(Map<String, Object> modifyInfo);

	public int modifyStore(Map<String, Object> modifyInfo);

	public int modifyPwd(MemberDTO member);

	public List<TagDTO> selectTag();

	public int registProduct(Map<String, Object> productInfo);
}
