package com.sd.mommyson.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.sd.mommyson.member.dao.MemberDAO;
import com.sd.mommyson.member.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {

	private final MemberDAO memberDAO;
	private BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	public MemberServiceImpl(MemberDAO memberDAO, BCryptPasswordEncoder passwordEncoder) {
		this.memberDAO = memberDAO;
		this.passwordEncoder = passwordEncoder;
	}
	
	@Override
	public int selectAll() {
		return memberDAO.selectAll();
	}

	@Override
	public MemberDTO selectMember(MemberDTO member) {
		
		MemberDTO loginMember = null;
		System.out.println(member);
		if(passwordEncoder.matches(member.getMemPwd(), memberDAO.selectEncPassword(member))) {
			loginMember = memberDAO.selectMember(member);
			System.out.println("들어왔음");
		}
		
		return loginMember;
	}

}
