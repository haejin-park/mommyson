package com.sd.mommyson.member.service;

import com.sd.mommyson.member.dto.MemberDTO;

public interface MemberService  {

	public int selectAll();
	
	public MemberDTO selectMember(MemberDTO member);
}
