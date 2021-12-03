package com.sd.mommyson.owner.dao;

import com.sd.mommyson.member.dto.CeoDTO;
import com.sd.mommyson.member.dto.MemberDTO;

public interface OwnerDAO {

	public CeoDTO selectOwner(MemberDTO member);
	
}
