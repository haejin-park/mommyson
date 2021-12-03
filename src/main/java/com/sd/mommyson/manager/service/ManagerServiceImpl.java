package com.sd.mommyson.manager.service;

import com.sd.mommyson.member.dao.MemberDAO;
import com.sd.mommyson.member.dto.MemberDTO;

public class ManagerServiceImpl implements ManagerService {

	private MemberDAO memberDAO;
	
	public ManagerServiceImpl(MemberDAO memberDAO) {
		this.memberDAO = memberDAO;
	}
	
	@Override
	public MemberDTO normalMemberSelect() {
		return null;
	}

	
}
