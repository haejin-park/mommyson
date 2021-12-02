package com.sd.mommyson.owner.dao;

import com.sd.mommyson.member.dto.MemberDTO;

public interface OwnerDAO {

	public MemberDTO selectOwner(MemberDTO member);
	
}
