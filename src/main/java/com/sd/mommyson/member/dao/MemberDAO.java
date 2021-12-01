package com.sd.mommyson.member.dao;

import com.sd.mommyson.member.dto.MemberDTO;

public interface MemberDAO {

	public int selectAll();

	public MemberDTO selectMember(MemberDTO member);

	public String selectEncPassword(MemberDTO member);
}
