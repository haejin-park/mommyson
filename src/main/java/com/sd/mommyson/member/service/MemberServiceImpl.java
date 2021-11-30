package com.sd.mommyson.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sd.mommyson.member.dao.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService {

	private final MemberDAO memberDAO;
	
	@Autowired
	public MemberServiceImpl(MemberDAO memberDAO) {
		this.memberDAO = memberDAO;
	}
	
	@Override
	public int selectAll() {
		return memberDAO.selectAll();
	}

}
